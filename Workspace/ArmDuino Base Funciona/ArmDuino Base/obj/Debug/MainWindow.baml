   M S B A M L   `   `   `  ����H  DArmDuino Base, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:ArmDuino_Base.ViewModelArmDuino_Base.ViewModel  5   	   C&clr-namespace:ArmDuino_Base.ConvertersArmDuino_Base.Converters  5   	       ArmDuino_Base.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   4vm%clr-namespace:ArmDuino_Base.ViewModel     5   	   =
converters&clr-namespace:ArmDuino_Base.Converters     5   	     � Title$  
MainWindow��5   	   $
��1080��6   $
��1920��6*    � 	Resources 5      +  %ArmDuino_Base.ViewModel.MainViewModel   MainViewModel+  %ArmDuino_Base.Converters.SliderMapper  SliderMapper��%:   &	        &	        5   
   6     5	   
   6"   5
      .��5      � 
���   � � DataContext# [  6   .+�5   
   �� -   5         ��Name$ 
videoImage��5      $
��1280��6$   $
��1024��61   $��606,17,28,10q�6?   ��6U   �� *KinectHandler.ImageFromKinect+ �� Mode$ TwoWay=��� 5   
   $
��1280��6   $
��1024��6   $��606,17,28,10q�6,   .+�5      A� -   5        $��ellipseLeftHand��5      
���  ��$��10��5      $��10��5      
�������5      A� 5      -   5        $��ellipseRightHand��5      
���  ��$��10��5      $��10��5      
�������5      A� 5      -   5        $��ellipseHead��5      
���  ��$��10��5      $��10��5      
�������5      A� 5      -   5        $��ellipseRightElbow��5       
���  ��$��10��5      $��10��5      
�������5!      A� 5"      -   5        $��ellipseRightShoulder��5%      
���  ��$��10��5#      $��10��5$      
�������5&      A� 5'      -   5        $��ellipseLeftShoulder��5*      
���  ��$��10��5(      $��10��5)      
�������5+      A� 5,      -   5        $��ellipseRightWrist��5/      
���  ��$��10��5-      $��10��5.      
�������50      52      �� 53   
   -	   5        $ image��53      $
��Left=�6   $	��222��6:   $��	43,43,0,0q�6G   $	��Top=�6Z   $	��474��6r   $��Assets/LOGO_ESCUELA.png��6~   �� 54   
   -
   5        $ 
image_Copy��54      $
��Left=�6$   $	��261��6?   $��
43,220,0,0q�6L   $	��Top=�6`   $	��441��6x   $��Assets/logo_entero.png��6�   A� 55   
   -   5        $��ConnectIndicator��55   �   
���  ��$
��Left=�6   $��43��68   $��
43,481,0,0q�6D   
���   �$	��Top=�6g   $��43��6    J� RenderTransformOrigin$ 0.412,-0.05&�6�   6�   �� 56   
   -   5        $ 
instVideo2��56      $��Assets/reminder_instr.png��6$   $��43,601,1345,47q�6G   r� 57   
   -   5         r�Name$ 	instVideo��57       r� Source$ br_aula_inst_charlas.wmv?�6*    r� LoadedBehavior$ Manual=�6L   	 J� Opacity$	 1Q�6d   
 r� UnloadedBehavior$
 Manual=�6p   $��10,-8,-10,8q�6�   58      59      