   M S B A M L   `   `   `  ����E  APetShopWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:PetShopWPF
PetShopWPF  5   	       PetShopWPF.AccountWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:PetShopWPF     5   	     � Title$  AccountWindow��5   	   $	��450��6   $	��800��6,   .��5	      � .+�5
   
   �� -   5         ��Name$ tbSuper��5
   "   $��30(�6   $
��Left=�63   $��
164,24,0,0q�6N   $
��Wrap=�6b   $��	Super Pet��6v   $	��Top=�6�   $	��132��6�   ��5      �� 5      5      �� 5   
   -   5        $��
lvEmployee��5      $��0,117,314,0q�6%    �� View 5      �� 5      .P�5      �� $��
Account ID��6%    �� Width$	 120��69    �� DisplayMemberBinding 6E   ��  �� Path$ 	AccountId��� 5      $��Account Name��6%   $	 120��6;    6G   �� $ Account1��� 5      $��Email��6%   $	 100��64    6@   �� $ Email� �� StringFormat$ 
dd/MM/yyyy���� 5      $��Phone��6%   $	 140��64    6@   �� $ PhoneNumber�5      5      �� 5   
   -   5        $��txtId��5   V   $
��Left=�6   $��591,142,0,0q�6-    �� TextWrapping$
 Wrap=�6B   $	��Top=�6c   $	��120��6{   �� 5   
   $��
Account ID��6   $
��Left=�6%   $��523,138,0,0q�6@   $	��Top=�6U   �� 5   
   $
��Name��6   $
��Left=�6   $��523,169,0,0q�6:   $	��Top=�6O   �� 5   
   -   5        $��txtName��5   V   $
��Left=�6   $��591,177,0,0q�6-   $
 Wrap=�6B   $	��Top=�6e   $	��120��6}   �� 5   
   $��Email��6   $
��Left=�6    $��	523,0,0,0q�6;   $��Center=�6N   �� 5    
   -   5        $��txtEmail��5    T   $
��Left=�6   $��	591,0,0,0q�6-   $
 Wrap=�6@   $��Center=�6d   $	��120��6   �� 5!   
   $��Phone��6   $
��Left=�6    $��523,235,0,0q�6;   $	��Top=�6P   �� 5"   
   -   5        $��txtPhone��5"   V   $
��Left=�6   $��591,239,0,0q�6-   $
 Wrap=�6B   $	��Top=�6f   $	��120��6~   �� 5#   
   $	��Add��6   $
��Left=�6   $��523,290,0,0q�6:   $	��Top=�6O   �� 5$   
   $��Update��6   $
��Left=�6"   $��571,290,0,0q�6=   $	��Top=�6R   �� 5%   
   -   5        $��Delete��5%      $
��Left=�6"   $��631,290,0,0q�6=   $	��Top=�6R    J� RenderTransformOrigin$ 1.041,-0.013&�6j   6�   �� 5&   
   -   5        $��	btnLogout��5&   "   $��Logout��6   $
��Left=�63   $��
730,24,0,0q�6N   $	��Top=�6b   $ 
2.2,-0.615&�6z   6�   5(      5)      