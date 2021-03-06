FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

Script by Philip Hutchison, April 2013
http://pipwerks.com
MIT license http://pipwerks.mit-license.org/

This script assumes:

1. You have a folder named "Wallpapers" in your Pictures folder
2. You have a subfolder named "Time of Day" in Wallpapers
3. You have six subfolders inside "Time of Day", with names that match the variables below. 
   * If you decide to use different folder names, you must change the variables to match the new folder names
4. You have images inside each folder

For example:
/Users/YOUR_USER_NAME/Pictures/Wallpapers/Time of Day/Afternoon Early/image.jpg

GeekTool can execute this script for you at specified intervals. Use this line in the command field:
osascript ~/Pictures/Wallpapers/Time\ of\ Day/wallpaper.scpt

     � 	 	� 
 
 S c r i p t   b y   P h i l i p   H u t c h i s o n ,   A p r i l   2 0 1 3 
 h t t p : / / p i p w e r k s . c o m 
 M I T   l i c e n s e   h t t p : / / p i p w e r k s . m i t - l i c e n s e . o r g / 
 
 T h i s   s c r i p t   a s s u m e s : 
 
 1 .   Y o u   h a v e   a   f o l d e r   n a m e d   " W a l l p a p e r s "   i n   y o u r   P i c t u r e s   f o l d e r 
 2 .   Y o u   h a v e   a   s u b f o l d e r   n a m e d   " T i m e   o f   D a y "   i n   W a l l p a p e r s 
 3 .   Y o u   h a v e   s i x   s u b f o l d e r s   i n s i d e   " T i m e   o f   D a y " ,   w i t h   n a m e s   t h a t   m a t c h   t h e   v a r i a b l e s   b e l o w .   
       *   I f   y o u   d e c i d e   t o   u s e   d i f f e r e n t   f o l d e r   n a m e s ,   y o u   m u s t   c h a n g e   t h e   v a r i a b l e s   t o   m a t c h   t h e   n e w   f o l d e r   n a m e s 
 4 .   Y o u   h a v e   i m a g e s   i n s i d e   e a c h   f o l d e r 
 
 F o r   e x a m p l e : 
 / U s e r s / Y O U R _ U S E R _ N A M E / P i c t u r e s / W a l l p a p e r s / T i m e   o f   D a y / A f t e r n o o n   E a r l y / i m a g e . j p g 
 
 G e e k T o o l   c a n   e x e c u t e   t h i s   s c r i p t   f o r   y o u   a t   s p e c i f i e d   i n t e r v a l s .   U s e   t h i s   l i n e   i n   t h e   c o m m a n d   f i e l d : 
 o s a s c r i p t   ~ / P i c t u r e s / W a l l p a p e r s / T i m e \   o f \   D a y / w a l l p a p e r . s c p t 
 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      BEGIN USER CONFIGURATION     �   2   B E G I N   U S E R   C O N F I G U R A T I O N      l     ��������  ��  ��        l     ��  ��      supply folder names     �   (   s u p p l y   f o l d e r   n a m e s      l     ����  r         m        �      E a r l y   M o r n i n g  o      ���� 0 morningearly morningEarly��  ��     ! " ! l    #���� # r     $ % $ m     & & � ' '  M i d   M o r n i n g % o      ���� 0 
morningmid 
morningMid��  ��   "  ( ) ( l    *���� * r     + , + m    	 - - � . .  L a t e   M o r n i n g , o      ���� 0 morninglate morningLate��  ��   )  / 0 / l    1���� 1 r     2 3 2 m     4 4 � 5 5  E a r l y   A f t e r n o o n 3 o      ����  0 afternoonearly afternoonEarly��  ��   0  6 7 6 l    8���� 8 r     9 : 9 m     ; ; � < <  M i d   A f t e r n o o n : o      ���� 0 afternoonmid afternoonMid��  ��   7  = > = l    ?���� ? r     @ A @ m     B B � C C  E a r l y   E v e n i n g A o      ���� 0 eveningearly eveningEarly��  ��   >  D E D l    F���� F r     G H G m     I I � J J  M i d   E v e n i n g H o      ���� 0 
eveningmid 
eveningMid��  ��   E  K L K l    M���� M r     N O N m     P P � Q Q  L a t e   E v e n i n g O o      ���� 0 eveninglate eveningLate��  ��   L  R S R l    ' T���� T r     ' U V U m     # W W � X X  E a r l y   N i g h t V o      ���� 0 
nightearly 
nightEarly��  ��   S  Y Z Y l  ( / [���� [ r   ( / \ ] \ m   ( + ^ ^ � _ _  M i d   N i g h t ] o      ���� 0 nightmid nightMid��  ��   Z  ` a ` l  0 7 b���� b r   0 7 c d c m   0 3 e e � f f  L a t e   N i g h t d o      ���� 0 	nightlate 	nightLate��  ��   a  g h g l     ��������  ��  ��   h  i j i l     �� k l��   k $  for multiple monitor support.    l � m m <   f o r   m u l t i p l e   m o n i t o r   s u p p o r t . j  n o n l     �� p q��   p i c set to true to display the same image on all desktops, false to show unique images on each desktop    q � r r �   s e t   t o   t r u e   t o   d i s p l a y   t h e   s a m e   i m a g e   o n   a l l   d e s k t o p s ,   f a l s e   t o   s h o w   u n i q u e   i m a g e s   o n   e a c h   d e s k t o p o  s t s l  8 = u���� u r   8 = v w v m   8 9��
�� boovtrue w o      ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays��  ��   t  x y x l     ��������  ��  ��   y  z { z l     �� | }��   |   END USER CONFIGURATION    } � ~ ~ .   E N D   U S E R   C O N F I G U R A T I O N {   �  l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   get current hour    � � � � "   g e t   c u r r e n t   h o u r �  � � � l  > K ����� � r   > K � � � n   > G � � � 1   C G��
�� 
hour � l  > C ����� � I  > C������
�� .misccurdldt    ��� null��  ��  ��  ��   � o      ���� 0 h  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   set default periodOfDay    � � � � 0   s e t   d e f a u l t   p e r i o d O f D a y �  � � � l  L Q ����� � r   L Q � � � o   L M���� 0 morningearly morningEarly � o      ���� 0 periodofday periodOfDay��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 8 2 change value of periodOfDay based on current time    � � � � d   c h a n g e   v a l u e   o f   p e r i o d O f D a y   b a s e d   o n   c u r r e n t   t i m e �  � � � l  RY ����� � Z   RY � � ��� � l  R g ����� � G   R g � � � =   R Y � � � o   R U���� 0 h   � m   U X����  � =   \ c � � � o   \ _���� 0 h   � m   _ b���� ��  ��   � r   j o � � � o   j k���� 0 
morningmid 
morningMid � o      ���� 0 periodofday periodOfDay �  � � � l  r � ����� � G   r � � � � =   r y � � � o   r u���� 0 h   � m   u x���� 	 � =   | � � � � o   | ���� 0 h   � m    ����� 
��  ��   �  � � � r   � � � � � o   � �����  0 afternoonearly afternoonEarly � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � =   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � ����� 0 afternoonmid afternoonMid � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � G   � � � � � ?   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � ����� 0 eveningearly eveningEarly � o      ���� 0 periodofday periodOfDay �  � � � l  � � ����� � =   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � o   � ����� 0 
eveningmid 
eveningMid � o      �� 0 periodofday periodOfDay �  � � � l  � � ��~�} � G   � � � � � =   � � � � � o   � ��|�| 0 h   � m   � ��{�{  � =   � � � � � o   � ��z�z 0 h   � m   � ��y�y �~  �}   �  � � � r   � � � � � o   � ��x�x 0 eveninglate eveningLate � o      �w�w 0 periodofday periodOfDay �  � � � l  � ��v�u � G   � � � � ?   � � � � � o   � ��t�t 0 h   � m   � ��s�s  � A    � � � o   �r�r 0 h   � m  �q�q �v  �u   �  � � � r   � � � o  �p�p 0 
nightearly 
nightEarly � o      �o�o 0 periodofday periodOfDay �  � � � l + ��n�m � G  + � � � ?   �  � o  �l�l 0 h    m  �k�k  � =  "' o  "%�j�j 0 h   m  %&�i�i �n  �m   �  r  .5 o  .1�h�h 0 nightmid nightMid o      �g�g 0 periodofday periodOfDay  l 8K	�f�e	 G  8K

 ?  8= o  8;�d�d 0 h   m  ;<�c�c  A  @G o  @C�b�b 0 h   m  CF�a�a �f  �e   �` r  NU o  NQ�_�_ 0 	nightlate 	nightLate o      �^�^ 0 periodofday periodOfDay�`  ��  ��  ��   �  l     �]�\�[�]  �\  �[    l     �Z�Z   ; 5 helper function ("handler") for getting random image    � j   h e l p e r   f u n c t i o n   ( " h a n d l e r " )   f o r   g e t t i n g   r a n d o m   i m a g e  i      I      �Y�X�Y 0 getimage getImage �W o      �V�V 0 
foldername 
folderName�W  �X   k        !"! l     �U�T�S�U  �T  �S  " #$# O     %&% L    '' c    ()( n    *+* 3    �R
�R 
file+ n    ,-, 4    �Q.
�Q 
cfol. l   /�P�O/ b    010 m    	22 �33 @ P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y :1 o   	 
�N�N 0 
foldername 
folderName�P  �O  - 1    �M
�M 
home) m    �L
�L 
ctxt& m     44�                                                                                  MACS  alis    \  Joey                       ��H+   :^8
Finder.app                                                      ;��>��        ����  	                CoreServices    �      �=��     :^8 :^+ :^*  .Joey:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p  
  J o e y  &System/Library/CoreServices/Finder.app  / ��  $ 5�K5 l   �J�I�H�J  �I  �H  �K   676 l     �G�F�E�G  �F  �E  7 898 l     �D�C�B�D  �C  �B  9 :;: l Z�<�A�@< O  Z�=>= k  `�?? @A@ l ``�?�>�=�?  �>  �=  A BCB l ``�<DE�<  D 3 - wrapped in a try block for error suppression   E �FF Z   w r a p p e d   i n   a   t r y   b l o c k   f o r   e r r o r   s u p p r e s s i o nC GHG Q  `�IJ�;I k  c�KK LML l cc�:�9�8�:  �9  �8  M NON l cc�7PQ�7  P 6 0 determine which picture to use for main display   Q �RR `   d e t e r m i n e   w h i c h   p i c t u r e   t o   u s e   f o r   m a i n   d i s p l a yO STS r  coUVU n ckWXW I  dk�6Y�5�6 0 getimage getImageY Z�4Z o  dg�3�3 0 periodofday periodOfDay�4  �5  X  f  cdV o      �2�2 (0 maindisplaypicture mainDisplayPictureT [\[ l pp�1�0�/�1  �0  �/  \ ]^] l pp�._`�.  _ = 7 set the picture for additional monitors, if applicable   ` �aa n   s e t   t h e   p i c t u r e   f o r   a d d i t i o n a l   m o n i t o r s ,   i f   a p p l i c a b l e^ bcb O  p�ded k  v�ff ghg l vv�-�,�+�-  �,  �+  h iji l vv�*kl�*  k &   get a reference to all desktops   l �mm @   g e t   a   r e f e r e n c e   t o   a l l   d e s k t o p sj non r  v�pqp N  v|rr 2  v{�)
�) 
dskpq o      �(�( 0 thedesktops theDesktopso sts l ���'�&�%�'  �&  �%  t uvu l ���$wx�$  w !  handle additional desktops   x �yy 6   h a n d l e   a d d i t i o n a l   d e s k t o p sv z{z Z  ��|}�#�"| l ��~�!� ~ ?  ��� l ������ I �����
� .corecnte****       ****� o  ���� 0 thedesktops theDesktops�  �  �  � m  ���� �!  �   } k  ���� ��� l ������  �  �  � ��� l ������  � D > loop through all desktops (beginning with the second desktop)   � ��� |   l o o p   t h r o u g h   a l l   d e s k t o p s   ( b e g i n n i n g   w i t h   t h e   s e c o n d   d e s k t o p )� ��� Y  �������� k  ���� ��� l ������  �  �  � ��� l ������  � #  determine which image to use   � ��� :   d e t e r m i n e   w h i c h   i m a g e   t o   u s e� ��� Z  ������� l ������ = ����� o  ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays� m  ���
� boovfals�  �  � r  ����� n ����� I  ���
��	�
 0 getimage getImage� ��� o  ���� 0 periodofday periodOfDay�  �	  �  f  ��� o      �� 20 secondarydisplaypicture secondaryDisplayPicture�  � r  ����� n ����� o  ���� (0 maindisplaypicture mainDisplayPicture�  f  ��� o      �� 20 secondarydisplaypicture secondaryDisplayPicture� ��� l ������  �  �  � ��� l ��� ���   �   apply image to desktop   � ��� .   a p p l y   i m a g e   t o   d e s k t o p� ��� r  ����� o  ������ 20 secondarydisplaypicture secondaryDisplayPicture� n      ��� 1  ����
�� 
picP� n  ����� 4  �����
�� 
cobj� o  ������ 0 x  � l �������� o  ������ 0 thedesktops theDesktops��  ��  � ���� l ����������  ��  ��  ��  � 0 x  � m  ������ � l �������� I �������
�� .corecnte****       ****� o  ������ 0 thedesktops theDesktops��  ��  ��  �  � ���� l ����������  ��  ��  ��  �#  �"  { ���� l ����������  ��  ��  ��  e m  ps���                                                                                  sevs  alis    z  Joey                       ��H+   :^8System Events.app                                               ;[.ˈ�        ����  	                CoreServices    �      ˈ%b     :^8 :^+ :^*  5Joey:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p  
  J o e y  -System/Library/CoreServices/System Events.app   / ��  c ��� l ����������  ��  ��  � ��� l ��������  � ( " set the primary monitor's picture   � ��� D   s e t   t h e   p r i m a r y   m o n i t o r ' s   p i c t u r e� ��� l ��������  � R L due to a Finder quirk, this has to be done AFTER setting the other displays   � ��� �   d u e   t o   a   F i n d e r   q u i r k ,   t h i s   h a s   t o   b e   d o n e   A F T E R   s e t t i n g   t h e   o t h e r   d i s p l a y s� ��� r  ����� o  ������ (0 maindisplaypicture mainDisplayPicture� 1  ����
�� 
dpic� ���� l ����������  ��  ��  ��  J R      ������
�� .ascrerr ****      � ****��  ��  �;  H ���� l ����������  ��  ��  ��  > m  Z]���                                                                                  MACS  alis    \  Joey                       ��H+   :^8
Finder.app                                                      ;��>��        ����  	                CoreServices    �      �=��     :^8 :^+ :^*  .Joey:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p  
  J o e y  &System/Library/CoreServices/Finder.app  / ��  �A  �@  ; ���� l     ��������  ��  ��  ��       "�����  & - 4 ; B I P W ^ e���� B��������������������������������  �  ������������������������������������������������������������������ 0 getimage getImage
�� .aevtoappnull  �   � ****�� 0 morningearly morningEarly�� 0 
morningmid 
morningMid�� 0 morninglate morningLate��  0 afternoonearly afternoonEarly�� 0 afternoonmid afternoonMid�� 0 eveningearly eveningEarly�� 0 
eveningmid 
eveningMid�� 0 eveninglate eveningLate�� 0 
nightearly 
nightEarly�� 0 nightmid nightMid�� 0 	nightlate 	nightLate�� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays�� 0 h  �� 0 periodofday periodOfDay�� (0 maindisplaypicture mainDisplayPicture�� 0 thedesktops theDesktops��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � ������������ 0 getimage getImage�� ����� �  ���� 0 
foldername 
folderName��  � ���� 0 
foldername 
folderName� 4����2����
�� 
home
�� 
cfol
�� 
file
�� 
ctxt�� � *�,��%/�.�&UOP� �����������
�� .aevtoappnull  �   � ****� k    ���  ��  !��  (��  /��  6��  =��  D��  K��  R��  Y��  `��  s��  ���  ���  ��� :����  ��  ��  � ���� 0 x  � 4 �� &�� -�� 4�� ;�� B�� I�� P�� W�� ^�� e������������~�}�|�{�z�y�x�w�v�u�t�s��r�q��p�o�n�m�l�k�j�i�h�� 0 morningearly morningEarly�� 0 
morningmid 
morningMid�� 0 morninglate morningLate��  0 afternoonearly afternoonEarly�� 0 afternoonmid afternoonMid�� 0 eveningearly eveningEarly�� 0 
eveningmid 
eveningMid�� 0 eveninglate eveningLate�� 0 
nightearly 
nightEarly�� 0 nightmid nightMid�� 0 	nightlate 	nightLate�� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays
�� .misccurdldt    ��� null
�� 
hour�� 0 h  � 0 periodofday periodOfDay�~ �} 
�| 
bool�{ 	�z 
�y �x �w �v �u �t �s �r 0 getimage getImage�q (0 maindisplaypicture mainDisplayPicture
�p 
dskp�o 0 thedesktops theDesktops
�n .corecnte****       ****�m 20 secondarydisplaypicture secondaryDisplayPicture
�l 
cobj
�k 
picP
�j 
dpic�i  �h  ����E�O�E�O�E�O�E�O�E�O�E�O�E�O�E�Oa E` Oa E` Oa E` OeE` O*j a ,E` O�E` O_ a  
 _ a  a & 
�E` Y �_ a  
 _ a  a & 
�E` Y �_ a    
�E` Y �_ a  
 _ a !a & 
�E` Y �_ a !  
�E` Y �_ a " 
 _ a # a & 
�E` Y e_ a #
 _ a $a & _ E` Y C_ a %
 _ k a & _ E` Y #_ k
 _ a &a & _ E` Y hOa ' � �)_ k+ (E` )Oa * i*a +-E` ,O_ ,j -k O Gl_ ,j -kh  _ f  )_ k+ (E` .Y )a ),E` .O_ ._ ,a /�/a 0,FOP[OY��OPY hOPUO_ )*a 1,FOPW X 2 3hOPU
�� boovtrue�� � ��� � J o e y : U s e r s : R a c h e l : P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y : E a r l y   E v e n i n g : 0 7 - E a r l y - E v e n i n g . p n g� �� ��g
�g 
dskp��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ascr  ��ޭ