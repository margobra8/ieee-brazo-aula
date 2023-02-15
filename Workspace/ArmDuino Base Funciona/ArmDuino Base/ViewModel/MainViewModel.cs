using ArmDuino_Base.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ArmDuino_Base;
using Microsoft.Kinect;
using System.Timers;

namespace ArmDuino_Base.ViewModel
{
    class MainViewModel
    {
        public Boolean connected = false;
        public Boolean isConecting = false;
        public Boolean timerRunning = false;
        public Boolean timerEnded = false;
        public Boolean running = false;

        private static System.Timers.Timer aTimer;

        public static MainViewModel Current;
        public COMHandler COMHandler { get; set; }
        public KinectHandler KinectHandler { get; set; }
        public Arm Arm { get; set; }
        public SpokenCommand Rect { get; set; }
        public SpokenCommand Salute { get; set; }
        public SpokenCommand Navidades { get; set; }
        public SpokenCommand ParalaMusica { get; set; }
        public SpokenCommand Cumpleaños { get; set; }

        public delegate void COMConnectorFunction();

        private void OnTimedEvent(object sender, ElapsedEventArgs e)
        {
            Console.WriteLine("Empiezo a Jugar");
            Console.WriteLine("Conectado: " + connected);
            timerEnded = true;
            
        }

        public MainViewModel()
        {
            Current = this;
            Arm = new Arm();
            COMHandler = new COMHandler();
            KinectHandler = new KinectHandler();

            aTimer = new System.Timers.Timer(1500);
            // Hook up the Elapsed event for the timer. 

        }

        private void armTimer() {
            aTimer.Elapsed += OnTimedEvent;
            aTimer.AutoReset = false;
            aTimer.Enabled = true;
            timerRunning = true;
        }



        public void KinectMapper(COMConnectorFunction connectionFunction, COMConnectorFunction disconnectionFunction)
        {
            if (!KinectHandler.Tracking) return;
            Skeleton currentSkeleton = KinectHandler.closestSkeleton;
            
            if (KinectHandler.Sensor != null && KinectHandler.Sensor.SkeletonStream.IsEnabled && currentSkeleton != null)
            {
                //Console.WriteLine(KinectHandler.isStartPosition(currentSkeleton));
                if(!connected)
                {
                    if(!timerRunning)
                    {
                        if (KinectHandler.isStartPosition(currentSkeleton))
                        {
                            //isConecting = false;
                            armTimer();
                            connectionFunction();
                            Console.WriteLine("Posición Final. Timer");
                        }
                    } else if(timerEnded)
                    {
                        Console.WriteLine("Empieza la vaina");
                        timerEnded = false;
                        connected = true;
                        timerRunning = false;
                    }
                } else
                {
                    if (!timerRunning)
                    {
                        if(KinectHandler.isStartPosition(currentSkeleton)) {
                            //isConecting = false;
                            armTimer();
                            disconnectionFunction();
                            Console.WriteLine("Posición Final. Timer");
                        }
                        
                    }
                    else if (timerEnded)
                    {
                        timerEnded = false;
                        timerRunning = false;
                        connected = false;
                    }

                }

                double horizontal1angle = KinectHandler.RightJointsAnglePonderated(currentSkeleton.Joints[JointType.ShoulderLeft], currentSkeleton.Joints[JointType.ShoulderRight], currentSkeleton.Joints[JointType.ElbowRight], currentSkeleton,1 ,90);
                double horizontal2angle = KinectHandler.RightJointsAngle(currentSkeleton.Joints[JointType.ShoulderRight], currentSkeleton.Joints[JointType.ElbowRight], currentSkeleton.Joints[JointType.WristRight], currentSkeleton);
                double horizontal3angle = KinectHandler.RightJointsAngle(currentSkeleton.Joints[JointType.ElbowRight], currentSkeleton.Joints[JointType.WristRight], currentSkeleton.Joints[JointType.HandRight], currentSkeleton);
                
                Arm.Horizontal1Ang = (int)horizontal1angle;
                Arm.Horizontal2Ang = (int)KinectHandler.AngleLinealShift(horizontal2angle, 20, 90, 140);
                //Arm.Horizontal3Ang = (int)horizontal3angle;
                Arm.Horizontal3Ang = (int)90;
                //System.Diagnostics.Debug.WriteLine(horizontal2angle + "\t" + Arm.Horizontal2Ang);
                if (KinectHandler.Grip) Arm.Pinza = 35;
                else Arm.Pinza = 0;
                Arm.BaseAng = KinectHandler.GetVerticalAngle(currentSkeleton);
                Arm.Vertical1Ang = KinectHandler.GetVerticalAngle(currentSkeleton);
                //Arm.Vertical2Ang = KinectHandler.GetVerticalAngle(currentSkeleton);
                if (KinectHandler.RightGrip) Arm.Vertical2Ang = 0;
                else Arm.Vertical2Ang = 90;
            }
            else
            {
                disconnectionFunction();
                connected = false; 
            }
        }
    }
}
