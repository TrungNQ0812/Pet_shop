   M S B A M L   `   `   `  ����E  APetShopWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:PetShopWPF
PetShopWPF  5   	       PetShopWPF.CustomerWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:PetShopWPF     5   	     � Title$  CustomerWindow��5   	   $	��450��6    $	��800��6-   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ accountDataGrid��5
         AutoGenerateColumns$
 True��6,   �� 5   
   $��40(�6   $
��Bold"�6   
���W�.�$��	Super Pet��6F   $
��Left=�6Z   $��
301,10,0,0q�6u   $	��Top=�6�    J� RenderTransformOrigin$ 
0.961,0.44&�6�   �� 5   
   $
��Food��6   
���  ��$��15(�60   $��Black"�6>   $��182,71,574,327q�6Q   6k   �� 5   
   -   5        $��lvItems��5      $��12,102,0,101q�6"   $
��Left=�68   $	��384��6S    �� View 5      �� 5      .P�5      �� $��Item ID��6%    �� Width$	 100��66    �� DisplayMemberBinding 6B   ��  �� Path$ ItemId��� 5      $��	Item Name��6%   $	 200��68    6D   �� $ ItemName��� 5      $��Quantity��6%   $ 80��67    6B   �� $ Quantity�5      5      �� 5   
   $��Services��6   
���  ��$��15(�64   $��Black"�6B   $��576,71,154,327q�6U   $ -0.042,0.392&�6m   6�   �� 5   
   -   5        $��	lvService��5      $��422,102,0,101q�6$   $
��Left=�6;   $	��378��6V    5      �� 5      .P�5      �� $��
Service ID��6%   $	 100��69    6E   �� $ 	ServiceId��� 5      $��Service Name��6%   $	 192��6;    6G   �� $ ServiceName��� 5      $��Charge��6%   $ 80��65    6@   �� $ ServiceCharge�5      5!      5"      5#      