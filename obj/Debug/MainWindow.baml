   M S B A M L   `   `   `  ����F  BCalculadora, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:CalculadoraCalculadora  5   	       Calculadora.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Calculadora     5   	   -   5          �Name$  Calculadora��5   *    � Title$ Calculadora��5   	   $	��700��6   $	��400��6*   $	��600��66   $	��400��6F   ���	#FF4D4D4D � WindowStartupLocation$ CenterScreen=�6l    � 
ResizeMode$ CanMinimize=�6�   
������� � AllowsTransparency .  � WindowStyle$
 None=�6�    � 	Resources 5
       �� 
TargetType   PadNumerico �� Property	 �� Value3  -System.Windows.Media.Effects.DropShadowEffect
   
BlurRadius   	Direction   RenderingBias   Color   Opacity   ShadowDepth �� 
TargetType �� Triggers P� Property P� Value��%  &	        �� 5   
   " ��6   .�5      ��  � ��	 �	#FF3232326+   �� 5       � ��$	 22(�6)   �� 5       � ��
	 �����6+   �� 5       � ��$	 Segoe UI Black)�6+   �� 5       � ��
	 ���� 6,   �� 5       �@J�Effect	 5        5      $
 5Q�6'   $
 -100Q�66   $ Quality=�6G   $ Black��6_   $	 0.3Q�6m   $ 1Q�6{   6�   5      �� 5       � ��	 5      �� 5!      " ��6&   .R�5#      �� #��z��6!   ._�5$      �� $��Center=�6/   $��Center=�6L   5%      5'      5+       5-      P� 5/       �@J�IsMouseOver . . �51      ��  � ��	 �	#FF27272763   53      P� 55       � �� . . �57      ��  � ��
	 �   �63   59      5=      5@      .��5B      �  � RowDefinitions 5D   
   �� 5F      $��30 �6   6*   �� 5G      $	��100 �6   6+   �� 5H      $��* �6   $	��700��6'   69   .+�5L   
   � $��0��6   .+�5N      �� -   5        ���	#FF232323$��0 0 0 0q�5N   ]   $��0q�6n    J� Effect 5P        5Q      $
 20Q�6'   $	 -90Q�67   $ Quality=�6G   $ 4Q�6_   $	 0.2Q�6o   ._�5T      �  � ColumnDefinitions 5V      �� 5X      $��* �6+   67   �� 5Y      $��30 �6+   68   �� 5Z      $��30 �6+   68   .+�5^      �� $��0��6    $#��Calculadora Made by Alexander��60   $��Center=�6U   $��10 0 0 0q�6p   �� 5_      -   5        $��1��5_      $��-��6-   
������� � Cursor$
 Hand��6]   $��0q�6k    
 TopBar#��[ 6   �� 5`      -   5        $��2��5`      $��x��6-   
�������$
 Hand��6Z   $��0q�6h   #��[ 6|   5b      5d      5f      � 5h   
   $��1��6   $��10 20 10 10q�6   ���	#FF323232 5i        5j      $
 5Q�6#   $
 -100Q�62   $ Quality=�6C   $ Black��6[   $	 0.3Q�6i   $ 1Q�6w    5m      �� 5o      $��2* �6    �� 5p      $��3* �6    .+�5t      �� -   5         ��Name$ anteriorResultado��5t      $��0��63   $��Right=�6@   $��Center=�6\   $��WrapWithOverFlow=�6w   $�� ��6�   $��16(�6�   
�������$��0 0 10 0q�6�   �� 5v      -   5        $ 	resultado��5v      $��1��6+   $��Right=�68   $��WrapWithOverflow=�6T   $��0��6t   $��Center=�6}   $��0 0 10 0q�6�   $��34(�6�   
�������6�   5x      � 5z   
   $��2��6   $��10q�6    5|      �� 5~      6"   �� 5      6"   �� 5�      6"   �� 5�      6"    5�      �� 5�      6%   �� 5�      6%   �� 5�      6%   �� 5�      6%   .+�5�      �� -   5        $��1��5�      $��0��6!   $��0��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -   5        $��2��5�      $��1��6!   $��0��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -	   5        $��3��5�      $��2��6!   $��0��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -
   5        $��+��5�      
 � Tag$ +��6!   $��3��6)   $��0��69   $��1 10 1 0q�6F   #��[  6X   6}   �� 5�      -   5        $��4��5�      $��0��6!   $��1��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -   5        $��5��5�      $��1��6!   $��1��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -   5        $��6��5�      $��2��6!   $��1��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -   5        $��-��5�      $ -��6!   $��3��6)   $��1��69   $��1 10 1 0q�6F   #��[  6X   6}   �� 5�      -   5        $��7��5�      $��0��6!   $��2��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -   5        $��8��5�      $��1��6!   $��2��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -   5        $��9��5�      $��2��6!   $��2��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -   5        $��÷��5�      $ /��6!   $��3��6)   $��2��69   $��1 10 1 0q�6F   #��[  6X   6}   �� 5�      -   5        $��0��5�      $��0��6!   $��3��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -   5        $��C��5�      $��1��6!   $��3��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -   5        $��=��5�      $��2��6!   $��3��61   $��1 10 1 0q�6>   #��[  6P   6u   �� 5�      -   5        $��x��5�      $ *��6!   $��3��6)   $��3��69   $��1 10 1 0q�6F   #��[  6X   6}   5�      5�      5�      