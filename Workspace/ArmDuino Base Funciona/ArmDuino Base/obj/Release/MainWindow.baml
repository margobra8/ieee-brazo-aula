   M S B A M L   `   `   `  ���� H  DArmDuino Base, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:ArmDuino_Base.ViewModelArmDuino_Base.ViewModel  C&clr-namespace:ArmDuino_Base.ConvertersArmDuino_Base.Converters      ArmDuino_Base.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     4vm%clr-namespace:ArmDuino_Base.ViewModel     =
converters&clr-namespace:ArmDuino_Base.Converters       � Title$  
MainWindow��$
��1080��$
��1920�� � 	Resources +  %ArmDuino_Base.ViewModel.MainViewModel   MainViewModel+  %ArmDuino_Base.Converters.SliderMapper  SliderMapper��%   &	        &	          .��� 
���   � � DataContext# [  .+��� -    ��Name$ 
videoImage��$
��1280��$
��1024��$��606,17,28,10q����� *KinectHandler.ImageFromKinect+ �� Mode$ TwoWay=��� $
��1280��$
��1024��$��606,17,28,10q�.+�A� -   $��ellipseLeftHand��
���  ��$��10��$��10��
�������A� -   $��ellipseRightHand��
���  ��$��10��$��10��
�������A� -   $��ellipseHead��
���  ��$��10��$��10��
�������A� -   $��ellipseRightElbow��
���  ��$��10��$��10��
�������A� -   $��ellipseRightShoulder��
���  ��$��10��$��10��
�������A� -   $��ellipseLeftShoulder��
���  ��$��10��$��10��
�������A� -   $��ellipseRightWrist��
���  ��$��10��$��10��
��������� -	   $ image��$
��Left=�$	��222��$��	43,43,0,0q�$	��Top=�$	��474��$��Assets/LOGO_ESCUELA.png���� -
   $ 
image_Copy��$
��Left=�$	��261��$��
43,220,0,0q�$	��Top=�$	��441��$��Assets/logo_entero.png��A� -   $��ConnectIndicator��
���  ��$
��Left=�$��43��$��
43,481,0,0q�
���   �$	��Top=�$��43�� J� RenderTransformOrigin$ 0.412,-0.05&��� -   $ 
instVideo2��$��Assets/reminder_instr.png��$��43,601,1345,47q�r� -    r�Name$ 	instVideo�� r� Source$ br_aula_inst_charlas.wmv?� r� LoadedBehavior$ Manual=�	 J� Opacity$	 1Q�
 r� UnloadedBehavior$
 Manual=�$��10,-8,-10,8q�