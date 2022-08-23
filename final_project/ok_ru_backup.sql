PGDMP                         z            ok_ru    14.5    14.5 J    M           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            N           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            O           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            P           1262    18083    ok_ru    DATABASE     b   CREATE DATABASE ok_ru WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE ok_ru;
                dmitriy    false            �            1259    18084 
   friendship    TABLE     �   CREATE TABLE public.friendship (
    id integer NOT NULL,
    requested_by_user_id integer NOT NULL,
    requested_to_user_id integer NOT NULL,
    requested_at timestamp without time zone,
    confirmed_at timestamp without time zone
);
    DROP TABLE public.friendship;
       public         heap    dmitriy    false            �            1259    18087    friendship_id_seq    SEQUENCE     �   CREATE SEQUENCE public.friendship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.friendship_id_seq;
       public          dmitriy    false    209            Q           0    0    friendship_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.friendship_id_seq OWNED BY public.friendship.id;
          public          dmitriy    false    210            �            1259    18088    groups    TABLE     �   CREATE TABLE public.groups (
    id integer NOT NULL,
    name character varying(120),
    creator_id integer NOT NULL,
    created_at timestamp without time zone
);
    DROP TABLE public.groups;
       public         heap    dmitriy    false            �            1259    18091    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groups_id_seq;
       public          dmitriy    false    211            R           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
          public          dmitriy    false    212            �            1259    18092    groups_users    TABLE     �   CREATE TABLE public.groups_users (
    group_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone
);
     DROP TABLE public.groups_users;
       public         heap    dmitriy    false            �            1259    18095    messages    TABLE     �   CREATE TABLE public.messages (
    id integer NOT NULL,
    from_user_id integer NOT NULL,
    to_user_id integer NOT NULL,
    body text,
    is_important boolean,
    is_delivered boolean,
    created_at timestamp without time zone
);
    DROP TABLE public.messages;
       public         heap    dmitriy    false            �            1259    18100    messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public          dmitriy    false    214            S           0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
          public          dmitriy    false    215            �            1259    18101    music    TABLE     �   CREATE TABLE public.music (
    id integer NOT NULL,
    musician_id integer NOT NULL,
    song_title character varying(120) NOT NULL,
    duration time without time zone NOT NULL,
    size integer NOT NULL
);
    DROP TABLE public.music;
       public         heap    dmitriy    false            �            1259    18104    music_id_seq    SEQUENCE     �   CREATE SEQUENCE public.music_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.music_id_seq;
       public          dmitriy    false    216            T           0    0    music_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.music_id_seq OWNED BY public.music.id;
          public          dmitriy    false    217            �            1259    18105    notifications    TABLE     �   CREATE TABLE public.notifications (
    id integer NOT NULL,
    picture_id integer NOT NULL,
    description character varying(250) NOT NULL,
    created_at timestamp without time zone
);
 !   DROP TABLE public.notifications;
       public         heap    dmitriy    false            �            1259    18108    notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          dmitriy    false    218            U           0    0    notifications_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;
          public          dmitriy    false    219            �            1259    18109    pictures    TABLE       CREATE TABLE public.pictures (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    owner_id integer NOT NULL,
    description character varying(250) NOT NULL,
    uploaded_at timestamp without time zone NOT NULL,
    size integer NOT NULL
);
    DROP TABLE public.pictures;
       public         heap    dmitriy    false            �            1259    18114    pictures_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pictures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pictures_id_seq;
       public          dmitriy    false    220            V           0    0    pictures_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pictures_id_seq OWNED BY public.pictures.id;
          public          dmitriy    false    221            �            1259    18115    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    seller_id integer NOT NULL,
    price numeric NOT NULL,
    name character varying(120) NOT NULL,
    description character varying(250) NOT NULL,
    created_at timestamp without time zone
);
    DROP TABLE public.products;
       public         heap    dmitriy    false            �            1259    18120    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          dmitriy    false    222            W           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          dmitriy    false    223            �            1259    18121    users    TABLE     R  CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(120) NOT NULL,
    city character varying(50),
    data_of_birth timestamp without time zone,
    created_at timestamp without time zone,
    picture_id integer
);
    DROP TABLE public.users;
       public         heap    dmitriy    false            �            1259    18124    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          dmitriy    false    224            X           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          dmitriy    false    225            �            1259    18125    video    TABLE     B  CREATE TABLE public.video (
    id integer NOT NULL,
    url character varying(250) NOT NULL,
    owner_id integer NOT NULL,
    description character varying(250) NOT NULL,
    uploaded_at timestamp without time zone NOT NULL,
    size integer NOT NULL,
    views integer,
    duration time without time zone NOT NULL
);
    DROP TABLE public.video;
       public         heap    dmitriy    false            �            1259    18130    video_id_seq    SEQUENCE     �   CREATE SEQUENCE public.video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.video_id_seq;
       public          dmitriy    false    226            Y           0    0    video_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.video_id_seq OWNED BY public.video.id;
          public          dmitriy    false    227            �           2604    18131    friendship id    DEFAULT     n   ALTER TABLE ONLY public.friendship ALTER COLUMN id SET DEFAULT nextval('public.friendship_id_seq'::regclass);
 <   ALTER TABLE public.friendship ALTER COLUMN id DROP DEFAULT;
       public          dmitriy    false    210    209            �           2604    18132 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public          dmitriy    false    212    211            �           2604    18133    messages id    DEFAULT     j   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public          dmitriy    false    215    214            �           2604    18134    music id    DEFAULT     d   ALTER TABLE ONLY public.music ALTER COLUMN id SET DEFAULT nextval('public.music_id_seq'::regclass);
 7   ALTER TABLE public.music ALTER COLUMN id DROP DEFAULT;
       public          dmitriy    false    217    216            �           2604    18135    notifications id    DEFAULT     t   ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 ?   ALTER TABLE public.notifications ALTER COLUMN id DROP DEFAULT;
       public          dmitriy    false    219    218            �           2604    18136    pictures id    DEFAULT     j   ALTER TABLE ONLY public.pictures ALTER COLUMN id SET DEFAULT nextval('public.pictures_id_seq'::regclass);
 :   ALTER TABLE public.pictures ALTER COLUMN id DROP DEFAULT;
       public          dmitriy    false    221    220            �           2604    18137    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          dmitriy    false    223    222            �           2604    18138    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          dmitriy    false    225    224            �           2604    18139    video id    DEFAULT     d   ALTER TABLE ONLY public.video ALTER COLUMN id SET DEFAULT nextval('public.video_id_seq'::regclass);
 7   ALTER TABLE public.video ALTER COLUMN id DROP DEFAULT;
       public          dmitriy    false    227    226            8          0    18084 
   friendship 
   TABLE DATA           p   COPY public.friendship (id, requested_by_user_id, requested_to_user_id, requested_at, confirmed_at) FROM stdin;
    public          dmitriy    false    209   %Q       :          0    18088    groups 
   TABLE DATA           B   COPY public.groups (id, name, creator_id, created_at) FROM stdin;
    public          dmitriy    false    211   �V       <          0    18092    groups_users 
   TABLE DATA           E   COPY public.groups_users (group_id, user_id, created_at) FROM stdin;
    public          dmitriy    false    213   �]       =          0    18095    messages 
   TABLE DATA           n   COPY public.messages (id, from_user_id, to_user_id, body, is_important, is_delivered, created_at) FROM stdin;
    public          dmitriy    false    214   �`       ?          0    18101    music 
   TABLE DATA           L   COPY public.music (id, musician_id, song_title, duration, size) FROM stdin;
    public          dmitriy    false    216   �j       A          0    18105    notifications 
   TABLE DATA           P   COPY public.notifications (id, picture_id, description, created_at) FROM stdin;
    public          dmitriy    false    218   rs       C          0    18109    pictures 
   TABLE DATA           U   COPY public.pictures (id, url, owner_id, description, uploaded_at, size) FROM stdin;
    public          dmitriy    false    220   �{       E          0    18115    products 
   TABLE DATA           W   COPY public.products (id, seller_id, price, name, description, created_at) FROM stdin;
    public          dmitriy    false    222   ?�       G          0    18121    users 
   TABLE DATA           n   COPY public.users (id, first_name, last_name, email, city, data_of_birth, created_at, picture_id) FROM stdin;
    public          dmitriy    false    224   ��       I          0    18125    video 
   TABLE DATA           c   COPY public.video (id, url, owner_id, description, uploaded_at, size, views, duration) FROM stdin;
    public          dmitriy    false    226   N�       Z           0    0    friendship_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.friendship_id_seq', 100, true);
          public          dmitriy    false    210            [           0    0    groups_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.groups_id_seq', 102, true);
          public          dmitriy    false    212            \           0    0    messages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.messages_id_seq', 100, true);
          public          dmitriy    false    215            ]           0    0    music_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.music_id_seq', 100, true);
          public          dmitriy    false    217            ^           0    0    notifications_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.notifications_id_seq', 100, true);
          public          dmitriy    false    219            _           0    0    pictures_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pictures_id_seq', 100, true);
          public          dmitriy    false    221            `           0    0    products_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.products_id_seq', 100, true);
          public          dmitriy    false    223            a           0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq', 104, true);
          public          dmitriy    false    225            b           0    0    video_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.video_id_seq', 219, true);
          public          dmitriy    false    227            �           2606    18141    friendship friendship_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.friendship
    ADD CONSTRAINT friendship_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.friendship DROP CONSTRAINT friendship_pkey;
       public            dmitriy    false    209            �           2606    18143    groups groups_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_name_key;
       public            dmitriy    false    211            �           2606    18145    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            dmitriy    false    211            �           2606    18147    groups_users groups_users_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.groups_users
    ADD CONSTRAINT groups_users_pkey PRIMARY KEY (group_id, user_id);
 H   ALTER TABLE ONLY public.groups_users DROP CONSTRAINT groups_users_pkey;
       public            dmitriy    false    213    213            �           2606    18149    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public            dmitriy    false    214            �           2606    18151    music music_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.music
    ADD CONSTRAINT music_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.music DROP CONSTRAINT music_pkey;
       public            dmitriy    false    216            �           2606    18153     notifications notifications_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
       public            dmitriy    false    218            �           2606    18155    pictures pictures_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pictures
    ADD CONSTRAINT pictures_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pictures DROP CONSTRAINT pictures_pkey;
       public            dmitriy    false    220            �           2606    18157    pictures pictures_url_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.pictures
    ADD CONSTRAINT pictures_url_key UNIQUE (url);
 C   ALTER TABLE ONLY public.pictures DROP CONSTRAINT pictures_url_key;
       public            dmitriy    false    220            �           2606    18159    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            dmitriy    false    222            �           2606    18161    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            dmitriy    false    224            �           2606    18163    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            dmitriy    false    224            �           2606    18165    video video_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.video DROP CONSTRAINT video_pkey;
       public            dmitriy    false    226            �           2606    18167    video video_url_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.video
    ADD CONSTRAINT video_url_key UNIQUE (url);
 =   ALTER TABLE ONLY public.video DROP CONSTRAINT video_url_key;
       public            dmitriy    false    226            8   Q  x�mXّ9
���rB�{lY��X���#��Rށʅ��`|�y`����ǿ������b�QƤo؟�ٯo�i����寧��5���e=|��\Z<���|�����ou��˖�t�x���؞��u��e5��~��������l[��r��sʹ���<�����.�[�, �"ݟ{�p�����tl��%} �2�H��@�0w��^��ZL%=vڢ���.eZ�{9�������j:܆Q�Z$Nz�!�f��t�N���"Haq�:Zt���[��-�>�R��H�G�@�F��₲�!����W�L�*��?���!��Ѱ_��F/Avw�,w[���F༷ۀ��9m���+���^�)�#4+��A��ɀ�1�jZ	3XQ��s .̲�u:P��<��B��*2S\p�Ki��#��Iz�Բ�
�N�o8�?���
�>��Bhf����y�P�9mpW��W�k	�ܸ.�tXb&��&�#�03���˲���z�>\����vH�O�����U���.�dM�*Q�v3ch�t�kb k� ^/��?�����l��O�}�%�O�~��G��y�����t�>���eê^	s���}%k;��&������u�
�r���y����������sT/J����n1�ǘ�*��L&!�����s6Cbf$.0�V0w��7K�cQ/[���(jG���0H���]NZ,�i{�X��Ï���$*A���+�}�]��(=UB1o�*9�T�Z{���Ǎ%<b�(����d�P��h�6�G$�`���C��oߢ�6���$�*!�gl��ny����͒�%���<b�|�U�Hh���M���n&����NKz��U�-�V4W�>��i�J�S��|���Y'!���۔�}+��C��8�6�b'�ny��$.��-���e�Ӥ%}�QL��4Ya��g�:{*�zd<�����N���l`܉�4AQv�`�[&��}q��WX�l�d��/�?��a�3a�� ?
�������NV ��=�����?��p��U�ڭޠT�I��f�J�3��`d�9���4�-�CaV,�ʤ'�4�@��[7y���
��j>�oj�>�<��l>���G�$VT&�^wd�����I]țg�Ğ#���q��(���xzD���H�L���L����3 1�dl���Ū����T�e�-J����Bʘ#������G2�/��Ǖe��\�AiL��b�7t���!K\K9ج��p�BIE�/?tP��>�<e�X%�������E�}�|^�'���R{����k���7�y}��i4��i)��<��g:�����"�:�;F���Z���^H      :   �  x�eX�n�8=3_�P��ֹ�d�=��4��	�RZ迟�"%3@9�Z�{�h%����l�a������]�lϢ�����ɥɤ���n�����l?g����M�X�J���x�K�=�g?ͣ��0%F6t%�,����qȞ�	>���Ԓ�V�r�k�)��=;��f��r�u�Vb?vs�6\��	�o��2��t�p	�'(�z�C��y�D
��T.�$�F<����c����;�~��ߟ��}8�%U�l�Z�4��_��B{Nߖ��\��*�8%�&�������J�K�+V�Rb?;�����qƮ���G���hq��kv?���᧾�}7Z8���lES�QY�4;
v�?�
7��6�����;�M�pr��$��Ğ���,�+|�%A����lFS�&W�dT)�i�g?}���Ɇ��h쯮فjA�6�v�'��BQ�Z%���y�آ�p���F<[�������iC��&6b�b�3	d)���:��b�=t�G�8kBPq]�4�a_ܜ=�3�lz@��p��=,s�h����쮶��5�T���Lm�����j#�������n�]�y'M�T&ҥ�%��2�RQ���;�!��Rt����G��P���t� G{�\��*��Ԋ7��~u�I����3rQ���G]�ԃ�Î�����d����4Z<B#v��]O)�سT:�����z�E?vP�`K6҆���3�1�Dٔp�+`�d�lY8K��i& ���t}���� [�"L�L}%z���+�DE�P�!ڈ�=ὤ�WZ�2�&7<P�n�G�wx�ĄRKj�`!��2$��Y��J�� ޘG����
�ÓY\.@JK|b�?Ԫu�$��2{��'j(�[h����lʐ�:{��h�mJ_���/H�*���e�6�c�+*A��U�1���� �`#�����^m#Ȧl�=�qqi"�Jƨ6栓�ˎE���R�4�TQ����Qd�������ߝ;b���݁-P&\�rm郌�%x�H�77w6٪�j̸2�f	�4v����eR�TQ��<�0æ�lmfK���3D%�C/�\<J�4s�WMlN��8,�s����z�▤������c���-o��n��\�� =�%X�����im�h�V_5��V ����x�E�0^�v+Ґ,�+�e�xM�EttH[�O\���1&rO'˴�cw��8�ѻ"N���r���V�|�}��E�����M�|��[�C�^@��(�8��h��X�dW�0i%���"�/&�8Lޒe��\U�Ъ� ?'t6h�.��v`�C N�5�6�Ӻ�E��b�*��n���$�r�ۦ"���K�J*ʕJ�O����B�j��5��?���x�֐��M§�;X,�3$�d�ų<v~��Q��aQK��LF�냤�cy�ZEd~�E��ʹ���(�m2Q�*�p��XPj�w�����3�[�%.�&
B��M��4r@��	|�V/�$+��hc�@䣿�r �@9��Ɵ��(��a׎1��]��2x���p?�0��
c��0��,����~�D�70��}pg��6�%�.i0�}�ȸNV���nx���-�?'�͊M�/�K�D�������n�|K[��	�**bx$Q��
|�������d�v5lɝͺ�P8 �Y(�$�o�a�JZ����آ|%�q)�=|�/�<D�<9R'R����ͦ
��6�%�d*�� U�M-?Τ���o777��g��      <   �  x�eV۱�0��V���!!)���:���9_f�eYV�:F���/�?��Cz袑
J����4}R�L�a��ʽ�aM�Sڅ|Q����}�KRM�9��F�O�>��p��r#X�O�Rgk��F�aq���C#rP/J9�A3h�Er@[N��0���D�h�!��� ض&1�Ϛr��>����A��9�Zg�~�9�TmYB��ZϦ��jr�r����6a�gk܋�$P�a�h�	��fh�K����{ϩX�g�*M��L)�H��Qͦ�܀���Ŝ�g��e3�kP�1��6�r4���;ˑ{N��3���SH� �C<��M��J�
��l�R2]g�>��Yc�а��Ip�c�m0W`�e��n1O��0�֡�6�AR��MNZ��?�W�f4c�`cm�V�c܌�͉��{;�h��fM7k����׶��F�|��.�1�l]F'���QG��c�RK�e�,M8�́U����������3tҴ �[���l�cs�kş�q�Ϣ�:>�(�>�jЧ��� Z�����W�ǵkq��Ci{є߈}�'Ņ�]m�@]�W�MkEp�V����hӖ�fg���7˿s�1�j&�q��>i=v�;�B��@�_�Y����Jic�\�L|A�C��7T�P[<S��S�z��@�2�j����i�.�''Ĝ����Z�6�W�?g5�g�b�y?R8X�<�΁�>�r�>#���uJ������a�ă      =   _
  x��Yَ�|.~E}@Ϡ��o�ez!ð��R�S�,��Q���̪�Ξ�(/HKJ��GdDdm��Tu��l�7;��U������w��a^��}�G��73�U��W���%�.Y���/��K��J�������[�m���;Gӛ�zwۧM���jӫ�C��%m.Y~�*T[�:W�۴��W������˴���.���(DsA��9B���U��ɭN�\����!������_]�/�f��2�j�(/�p�*:U�j^z'
17wwk醴����h�gݜ��of��bB�(������ʩ�fp��v|p�ð�W�����4�Z7��ov�-�̦6���e(�ب�V�z��^���I��n��C�y�����5��e�\��U�שǷ�&�f������i�܋]�k�����%��j�5궻���Pi�ӌ������0��t�Y��Nյ���t��B����R�,SU��B��_����w���;��7t�g�Ơ(��d����#���'��?w�l�a��5��1�j��U�
��P/#�.f��o~��}�c"n]-�����%�O�[��PM�~�c���_1��ҧ�j	!I��Q�FYEP��O��7��6��E���al΃i�ht��:����O�TU��La�����((��of����n3i��'���ԣq���)K��P�1N�.��'��(
31�ӟ5)�ʸ*ɝ����Z��Mt�/+:|y,!��~CVY�_��2!3����Dn�unx ��`�pĒ���R9���@��{æh��&_��6g���F�yʨP���cJG�ا��(�!/U�3���6/�}��H0��#�B8&�RJk|�n(�މ�זP�on��1F�ة��V�ԣ(t�fqD-_�0�EC�RX�c�sV�W��V��r7�O�G��*vh�
e~Adw�1 j�e:�ԫ%���>f�������N0���0	%{�V���c��.�v�~`�b ڄ�A��\y!��{7#�����,J\�t+�d�+H���E9���a[\oW�^`Q�d����%�}��f6�mb8�
4%� ү�(	�Q�=�}�����D��xӒ�`���O2�	8<�-KO�)*R!�g��Y� Dē$ҡ���g��1���8E����L��y��x&�!V��O)ƫO�~�P-��=?(��������!ٹ��Jz�<���N����i�.��	EԔ^)�(A<9e�k{������D�#jx��֨��`	�pT��00=>|��>�OlJ��(G��NT�:)�wHr���1�ĩ���M�ehZ孀^�m!!������m��	�o�d�@qM&ˀ���������*cW� s�xc�	U*KSB���-��O���FF��ve2�0~)�R�������b�I*d�v��'���:
%L�Rem��3�5�3�L���ՙ��r��n�l�9#��o�즓�Jp����@dBC��D�w�7�y���j9������%8v���s�N��J�C�Hߡ�g� �/�����Rf�4�1~��'L!`
d��w��Q�;�����ZF�%�K�A�Jgw����}�
�����V�l�iFB(h[�I�yh��m�Q����o�l�]�w�:�q=���l�s����O�k(��WҲ�F&p�h؇�������~c� &�z�W4��Pi��~�'$���M%��ty6��@�sDn5<�ݣ�Kx"eN��	�&D=�/\�CB.D�LFn����>-��F�+��i���m "��3�vJ�wֆ�y�{55|���o�u��?�#��x�f�n��`X9�`�q�٣F&]������/�|/3�ӇB����B$4��9�i�5��Zmbk>�����N���.�� ;�4����o�D���<�q\ut���G�d?��|���3+�Z���'K��x���D��Όax�="�p"�|FO�O #����C�rF*��x�X�a���z�%l��0.�`
ѯN��9a�@a�z"ǦltE[����}�f� z�=����H���5�m?{<�ӄUC�|W���_7K���!8�Ù߀����}�a��9u4��P�p�ʗƎ^a�e�~���xzN��q��啧c��S�RBhަ�/,��F�)��[�/��c�'�A��P��:T|!,�ӂߨ><�F���d��'�lv�!� ��VEu�w��{SJuGxF=;P��B��y�p���n��ǧwbi��@����>�f
/B`3O�qU}�B���kbD���C��&z~u:������� E�k�C=���UE����0 �9||�s���A:�X��$H�8ų!v0?�u�J'~n�����餀��q~^��ạ�G?����}x|�q�g��rb#����O?P m+,���p��q� �:q��?O�����>�XbpΎ�;�����nN>tb*�����q?�#�����j�U
S���w��<�۝�0o�����?c��¯�" N��If��>N� ��2�@v��_�@T�}xw(0��<��ӫ�t�]G�c�t�ğa�s8t����s���/z*}���_���?`�D����_�|��M�0      ?   d  x�eX]��6|&�a�")Q~p�%X �{������$���&e;��̬(������Z�H�
c����庬{�NjN[�����-�)�e���h���݊v�e+���|Si��zϓ���3���~�w5��wͥ�Bc�m/�)L�ύ��Nt]/��Z�q����}Q[�U�М�1��/Kݫ�gE�4�	�=�n���+�<���E7��Nv���yW;����_���e/�_q<��<>��H�pi���Vz�Z�qP�g��]m�3�@�.l��AB[Qs�'8Fc�H:���TXo�s0�Fc�Nj��b��^}�9Ρ��)Lg%�F�qL�z�5��[J�Fj# ��Dh�=N�8��b}\î�'�O�-Og>\_,��%"4WCa�c�{�\��ah��V���׳"�B�꾌��;v�t���:�}Y���򨍺-s��Pн�z�F?����qp� 9��Nj/�Z���\=�EJ�~^#��K;H=��Ny�i���㾦[��7�5�`���y.���m#|/���[|1�_���\I�0�z|@Y/[M���'껥	��Aq����o��e����B��1�R�l[d+✦���$������������� �Z#:�o�)q��H��J��e�
�Ek�%��M)*t���g�m]�\�#,��#]x���#7"ُ
�4�<���LGi��	��|�E�Z�a����;�
�=��;���޺��,jlpXщ9`=���{�eR�)#���Aa�(P�d�_�v�ۃp� �h1�)[�RA��wHb-�ң �CC�E#^����pD/�M�B�!,[��N#����Ch�zb
��*b��{/­6���=lE'��(Uk�ƒ$�eb�X�_�7�8�_"�	]y�T�7jRjh���E�.�:X�5�k\�Jpx��((`[AE���#��A�)@
>sd#q�1�F�1x�(>�"�J�����I�N�ŋߐ4)��[�gu�;.QK�p��R"��Y��kV��q����F ��K�G�z�ʍn��H���Qc1إcH�֥���T��t��Y�� ��̍4yb�K�ܑ�a��ﮕ�dl0�1�~,[�,W���q� �q��j��� ��l�Lˢ�x�
g��(��#U��ϵ�j�G=������BN!��dxPIԚ�5O��Q��P��t}}����ԁ���Pj�ɸ��k�!ҤU��������}�H4+�9>��?�m+V�u=���K"����D=v!��^�Kل��ZSl�u�DX����.G�ʳ���uw�m<^�J�j�He���h�����u~o ��\H3�XRG��a��k�=)Cy��� n����7l1I�\;Pމ���k�谪k<�Zj޹���yK���rz3)��� B�F�_�|�ru���
Ec����E�0ob�1xw���. �c�'Ob�f�XO�o{	��܅<���o{�P�ؐ�#W�\�W��@��z�8�0ˈ�$���GL5�6�G�=���]�yQK��F�Z���a
1�&�+��WB�?��LH�a�^�t�&��1'��'�������<�X��x��q��[��p���HD��(빑�<-�X�S�i!��ψu�@� ���qRG^�9T$ݏD��Z�� 3��*�6*�����@���:QY����hiu��<Gs��U�Ew���Au�_�+2"i�nOV�������"@|��=�=��D�C���)����?!O�e`Ag��z3H��I�
�H�J;(qM#.UT4���1�s��<��c���	���a(LкFz��2�����*3�+�Pٍ��Z� P�R;v�ێ��pO����Pu�	^1!�t	�@�m/cUuUM��QȪ�OS;��H��l�bl<��ǝ�{��2�?o'��Uo{#iM�N�60ҴTx�`�����Ra�ze!}��+4TXjT\��/~�28�;+��7=�pA��C���aS��2����~�NAOy\?��ZPp��:����"�HF��7������mԤ��V&�p��iÐ\G�zՔf#�%�])��wz�� �oD�TS�B�Y:�Ӆ�J�`��Kc�t���zՃr��2�u�cԤy���=�g)�U ��      A   S  x��Xˎ�6<s���*��؛��l�b�{�[��4�؀�~#ɔD��� ��!*����*D_��I��˧�wc�򟛲R��]���0��R�7�E��-on� ����S)�F�i�̨�T�e��2g8P�����u�}%V��n3zF�e޵����O�u������m13��o�p+��M��;�/g�W��y�z{�gRoj�����C��r[�Ym��*�[^���zU#�\��퉌p�'A����,�~�U?��q��VF�iE�
�@�E6��zr������P=i������j��"�A!���g'�l/�B|�����4�2w��C�P�iB��Aĭ��� �V�mtw�_mw�Ң����,�s=^���G�p�θ��D_VB�/3��a����e�#ߵ4����j��ԟY�*ɓ��Z�p�����c("e,��DG�S������C�P��S�hioE����VN�������!r$ջhD�
����c���('����e�]'|r��e#��=X�@#'�/1-/��8)�Z�;1eW�����d�G%&� IO��J�D5�ϛҖ�"!��ԋ!ځ�vW�8��E$ω�A"�)Ћߝ��ݯ�@��,DY����]J% vfWZ��&m,��q�RԍX'5�3_?����P���_��D��Cw��]Z�f({�j+""�z�vv�����x�[D�����>b��C���bFù�M"|Љ�+��I��ڌ�|<��|��U�:��腚�0���u*�A^T��a ���������Mj祒B�D���.��M3����U.�ZP�s���VF(�
�v�u3�&̆����w7�nW��� ѿ�&E�jW炘�p&bnK�L�Vħqy>��"�j��qsA��?J7�L5Ͳ'%�Ua>�P�
Ȁ�季�����;�E�s����؝Eȍ/؊�<p�Ca�~gU�o�t���<�=[/�`�O�k����7?�˄��wv܃�y��<P��Kȃ	g^����`1�͡
�H�,˗M?3���4����84U!)&,S?��D��@L��ͽf&V�0~ڽ4�77)���'c���k	 �����^��4B�����0MF�YP�/#u�[�� ����F��dX���*8�{�]T��=�S�(9 }�^h������4�� uOor?�O�M.0ł'�I�9`��)oE|�P�pgFY���bh7%e�98,�9U�Y$�k*rg�b������뾰�z|E����b���1���Ga�1y��X��F��г�ND�@�2�}U{�A}{�i��R�����Ø��1���]����B�發l&OV�}̔�'�C S�T�����Ϗ��$���$�"u"�-���Y����` f��%u���7d\|�>$C�p�U�o���n���n��@z�v��GQn+��
�H���U>�+T�弬[�t�y�>��	�w��$%�% P'�媍O��6�C�~n<w��6`{�`cW7�0�s�sɻD�t`�Nbx�vy����Zp]"�i���գ�n~ڟ�D���V��j�;t���V���&܂)�>�#�4QQ�Z�z@a�d&�֔]$�î�/,���@����xk��t���E�Ԝ!b�Nbn��p9|;w�>�ͣU�X�7Cy,E+7��7�V@�.[Z��׻�#$&:����M� Y���[A׋�x8��J���b���h�;�ref���� ǂ�9��˸E�@�z���&��
c�$/
	����e4aN{&�kQ_�g��O.��*Aj�?����~z	���/N��8�R0 @0�p5z�D|x�L���cS��ҲNދt�mZ��(@w����.�ެ�	a �:����ׄ��N��H��~ ��aQ������fٓ�>4�*M>c:R'd�ɴ�͇��F��|�CT��������E�5����$U�}�=����f{�d��<3֫t� ��g�Qm�HC,�{} ��%����O�ۯ��w&44��i��!�ч2�|�H+�u+L$^_۴5p�XH�F���!�W�����<'���B�|�<�).���>}�?lR�      C   Z  x��Zَ#�}&��>@���%�����)/�RuO%�J����}I�z�8�<�f�b��޳Q�|[���×/ӿ����:Oo�i�7������mZ����A�"�ܯ���Gޖ�2.�����_�ө���{a�E莱����$����bVH.%Q�,��������a��������e�e��ݰ�U��`/���XTJΩl�3��cQ�x���/�2��0����c�6�S�����mX�j���j��1OUk5)5w�Ռ�\�9���u+��ǰF���r��e�a��C��s��ՙ{��E�bu.�n,��^��J*M�'��tB���u+�mK.�xa�x�V����Wڗ��u������M����ò��c����,���V6�s��V�Ô*6c�S�XEN�aE!7��WXwݥ�aW�)�u��4^��J������4���y�b���q�c���7;�e��W�zN�%�ŗq�z<�;��9���T=�kM9k����|k�1���ʃGo�u��]�e�;l��i�7�U:��1��}��R�++��E����]6��ض��'}%��#��`��E�j���X򱝮�گ��S=5���/�(����	�*Y��QN3 '�e���wh��xŹ\��v>�g���N/v❧�5��3�L9�B{C�'�e<﻿o"�u�%ljĦNi�� �jͺr�/wx;��>�\Ih�9������[w�q^� �Q�H�ʉO�D�ߦˡ�����ǒW�2ʛ  �fES���Ձ�ކ�};�7���s�7o�3>{t�1�x�!��_"@vo�|�l��0]>�S:(���/\=�4����=�XQ9n4����帝o�z�@7͇q��Gt"������:7$�X�=G+P��	����PDh��538����q0xs��6�� e��h�5vu��!�q���~Yus�̗�2M\ {JWq�(G��
��m�����N�ʳf�Oo�oJ(FE$$3F���r�xON�<`d��7�R
��B�x��5�"��/��"A&@�<컟.�[��f��
T���l�z�P�B	��7%	I�mT\A�A����W�E�{�<��m@�`�(�)�I<�L�q�����M��!Ԯ;nc�����	���"�Vv�a:���T �e|�����v�6�T4���z�Y|���m���T݊AU'�L�2�+��0�XS8(%�����;wOL�u�X����(��u�;��^�e�� ��|<�zuk$�-p��j[��s�j�OE�KP��k��@��Om���L�J0��,-k@m��.4����>ƵB/k���p#��:K�Y	rr߷�n��^�j�*��}T��^@��Jk
�fw�_��h?M�uNf�����H
*� Pk�M� u�J��C�<BpN��߀98����SB2�M-�D�N@�r�,�5�|8l祿<(t�O.�~���2Mۚ� T+��C`{�����x��B~I��[��ˆ5^3�w��y/q��m���2@>p)7�NT6g�2&y�W���,�BttaUŅ��-�%`��p"D{����)�7w��W�V�Y�]�I���]���P{�3U�)��d��s�y��PꈠJ�,*��`���o-a$��K�4h�ά�+X;0?���E���N�D�jM4��,��2�R�S䜮8f6W���Onr���;ϰ����7��EI�5��Ɗ�j0�g��DX�d1�I���I�j�ڣ,*i�c�O�X�C���&HLe��� Q͙�@�b��FT���%���Kʔ�9�Z�����% �a�� v��t\1��F�M��.v�h���و홻_X9Kukzq�J���H��Ǆ��=�*���ڎ��)��@���=�q��ۃe�S�pT7��	n4�/�*g�����������.�>1�L��>,[�TQ�N��&K	��F���u�<�D�.���!
�n��c�R�Ɏ@z��`ͻ1(��sG��Ҙ93���,H��S���v{���G�a��R��}�C���1]��4�p��/}����F��%�����㞒���A�~+)�}W���
)�B7��z��b��1aR��L2���킌Y��:�[T�,��45M�ʹ⺤Aa��0�C�Ƅ8�?��V��5Mcn�Ń�ڄ�
>��rF{C��x>0Q+�5M@�\�J�hk��n�;����<����J7���9����n�0�����妕kx|S�t� ���ui �vw��F�?^�>��n���i �Gl�1o��T-P�&6<�vR1X=I��S�h`c��HAMӒ?E�g��豜?U�F��|���jg�,5-�x���1�N� $����(-J�J�K�UZ� VsҗMΡ��I�c"��z
S�Ӑ�3�a�n���i�w�l�-x),�Ir��ދZ22��`*/k�}:��m
�'�a8�M�K�5˅�6��ӭ[� @�J9��,%�����+E, aԶA��J�0�!�r��;��R�n��qX���,�'-Sx.��{�~�^�,�^�p�.���xb�s�[7�tJQ��g�*��L)oQ�]��bJZ�'7�󞌞U�k�a��e����-]�aq¨{�T���$�M�l-���@��Gy��J�{j�=�G7��1r����*�TBPی�9
�
���r�*������
 �l3��ԅe�x,r��uٖÐ{��[�PWԵ�_���KVL� x�{���GyW�Ki*���7�*^��gNb���?S��R��ctS�}�eC��O%�+�&<:õ�Ʊl�t]���+��y��p��r�W�̭��i,����WД�p�V�IA!xuOB"�	 8��UC�`� ��Q����SN]k��w�m���s��n��w��J�4�z88]n��WM��Ѳ��]�2�=����rT�	��8Jkn�7��!7���#���2���NC�Q�	O�+[T#�P����lU+�fꚓ�|�5�9Tiz��r���!\��#��Mʩ�K���7� ��)�t{�I]!�rڃ�.��a�����D�s���3���߸����,`3ӽh=
�!�q
.��6���!N�M �=}�P
�ue�X���͗>3��=�wz�]WF��'9��`eM}S㇀���t���jT]��U�X�$+P�fr�L>���t��f*B�6� "__>�J�9<\����>s�u��[��oV(��]�W����1���[���I)���X�9�O_q���N�o��y���a��RD�J}kХ�g
���޽E�\�����mY���N�%'`�E��S��P����%�;m�
N:�>q����K�7���)���^\�      E   _  x��Z�n�8<g?@%����`f��,f1�=�E�R�\��j=��o$i�{�r�ER���ɖ�4T�ʫ�~���*63]�m��\�7^��4�O�5?�������&��j6#��j���.��B��B]T)��;��I�jIk%�y��e�p��U�w_�Y��r�s�������z���4�3,*�KQ]�>-��RUe�4��u����	>�h��a��<���oa���r���{���-�=��y�G~c�a+^>s7+������	4II�UE�I�~4_��.��eb4O�2�~�~�慆�_��=�TٞKU�Jjʺ�˂n�ʧ����O��}��{�/f�h��������ix�q�o��C���P\��(unR��)�&G��O?�O��OH3z��'C���+~���	a�=�8�b�y�#a�_]�rq~�����p��ܽ!���T�w!)����{˾-;�l?+<�>/fz6��xc؟y=+���MXΑm9��C��)<t�rd=�lz]�iC�6�Ax� qۂ������]]8}��;�ɪ�y]�K2�נt<(<�EƗ�����ɂʎꮪ�F�/ˌ���~nH�8�{�}�����U�������6�-��ExYY�a�2EyM�>�]^���v����FWy�����RGx����[�	a�%Dm��T���P-i~����[.
۾<��(�~=�u��ӈ�W�\IR�JP�(�_��1L7��6Q~qQ���� Y�/����6dEv�ob�����<!�X��a��ff΍���� ���e`!�V��lQ�m��%=�=�	_�t�9}.�����~�S�� s�T�ٵSLX�n��c^��{ݟ�hz$(�
��gKO{U�a�Y-�p%�_��~Æ���΁��Q�7,i�<@@,/�d9��2��9����$��*j��0ζ��K�Ͽ�ŧ���x�� �R�4�y�0�\�Ȋ����Z���E�M
����X�T�=��������J#bM��߯*���A3���&�(@�:�Y%��C�`3��{�������3�~?LC?�PAkv�~����*ԒCא��c�!
'O��M�-pM6�r�"J��M�;�!s�@�bq�v�&��q�ӫ�;a҃�f	p�<ՂE�h]���dQr�����u�@�g�a�k�tz�����B������}�7���*u�KW3�0�(��;���
ʳ��.��B��:Ƞ���G�;k��Z���+�S��B�
)͝�H�0��LX���uC��g�(��B��8���VQxB���KN�.nzf��D,�?�/���t#�e��bʞ��9�����������aCKY2T��.,�QD򎵳�'�2
�VX�q�Ƌe�e)	����uG��e3�XC�Z�����ie6:�M� �X��A�-���
�H��j���['+�}����,�	˒ Y69l�%����\Q����Y
��u��7� ��p	)���i�g�;H�q���z?O}�!ކ�2�Ʋ�&_I���!�a��#�9��N�d�qq��9�7[YS�FW���0����w�����`��/�����԰�n%0��@U<���8eL�eKhK�^�ñ�㝺N�����8H,�(�&�窠���Q)�*���g��Q�{�9�������{�<�z7�X��|U0W�����2e;�fCFp"��y�^k�¤ WƵ��a2�1<�y/�!��N��~���'���u'�$'ā(X&m@b������a1���k�{�h��Rj`�j�u�/�ύ�
��#c��������ª�����d��N"��]5�N>S�7��j<KQ�,:��y����P�u�4�L;)u[{���t��������ނ�Tio���]�/U]���Ꮔ�^Dr'�y�?�N�9Uh�ۖХ��
�1��,�q��϶@���
�[�	�c	�R��~��69�GS��:,��$\�?���S)���(��n؁��ۛ��5Fd�2��з䔙u����^��AQ�~����0��b��@�-�v\`����+H�f�{�{�����}Wq*�;M
�j;��Qt�l*IHs[����p�b"��o�~�ޡ-gM���4�*k�Є��r���;�f�����X���s'�q���B��;� ��獅�������pE	�W�3n��9�G�g���[zΤ�
����1o�3��٠_��?��Qn�Do��� W2OgO�J���swZw l�u�T2���qUp2������NG|T�aV-��J�4�10�����6�t��s3�����Wt�цa즸��` ݂��1�\�L��|�Y��LW;9rӗ�u�<pTb�Z�Y����a�����+���]���k4�Q�r���wے���F�L�b�m�p\+B;�(ȉ�#gr��!׆r����R���@��N9|���]`������������c���|c��Q3�:�$��Jt�#jn!؍�G�%�֛Edv�B�_z�}7,x��/U���em�j���g��'<�RMge%���Q�� ��q4��4��ê>��$���x�&6��c��:�)�y�dE8D�(� �{`�6�F�B�U]��۝�r� K�x�Y&�Ѯ��V!;�G�5��kA��38� ��������-�'�"���u�f����Uc�����5���9ԪBw~&�&b�.}�5lhG��8?���R��klO,[��@�������\N�(�b�,�����}i���d��am�wdo��k�d��؅�b����`�trU��D�t-����Ӝ�>�S�kO���6��J�Q����SU�5�{�д�v[s^fz���Ny����o�J;hw��M���}s�	�v��ҙ�p��ߙ��D�I5�9F�x �������/�:0�Q�q������2/�.j��Y�N�+@	���5?Kj����;��jna\юvZ�E�Ǣ��pe�ə`��P��o���8:-�lO���YVH|M�ш���s]�-nr\�����㻤*=Dɓ�h�ӥ�^0�Y�g�n�[6�9$Çs`w���O�O�Z���U��p(߸����@���6�>&�}|5�%KH�銄�ڊd��A�C��o�Ђ��A?��v�U�Rښu@vж�k7/0�x;{s�g�fC[�������ݥ�p�.��9{���mK���Ev�@�]� ��3r�;F�8�ab�f�)�g�^�� ��n�㎠�[���MG>��5ǡ!�Y	&�+�������`�t!nV��;�q��qd'���F��i�	��_4���{͕^��ǎf|P]s��gt�
l�� ���W��i@{<��JB�[���ޛ�V�$DOZ�M৯΃e���!�m��I��mv����َ�W�1�*+)s�rt�_Xi���J��zw?[�"�(� ����m�����1�I �4�S���i6:��M�;�OM�|M��� �풒�ȵ� o�a�x��o��Q��s�K�D��:���XT����xd��ɉ�ㆀh��&/�Q<�#�/�FYd/�#{��hu�vCǈw�����W�y�      G   �  x�}Z�r�r]���KoX���+��h8���K���{���!�
=����7����Dx���_�?�ITuw�p�B�@e�<yN���]ԝ�-��R��vZ�~#}���#o��J��u�f���V��x�,_�g�yr��Qt�b~�(��� >���0���]�N�k��c�≏�\����n%߭�^+�Wz|f�B=�~��EIk��r�08�_��Y�ya�{��p���J�L{T��e#�al�Z��z����]n9^d=��FYv�Afm��������쯣l�2��i֎Jq_��X�����_qv��o����� /���%^�Ϛo�5�:ٮݲ����y����4��+o�3��~��QH�G�"<���W��=nt�����V>���t���V&�|�Q���$�tWGX��
/Oحƙ�׍�3b������Gv+�
o��Љ�4bu�(^<��"dwb�:W�vÇA���Pr8����k��zaN�'���ǥ��Џ���a#��l�8@3�|x�у	z+���J�v=�4sNNiH�������~W���|P��	���J�#��^[�Jlh�������y� Qz)��d_�X+t�@���z�	�����K��E�'�[�sJGY�)3�qT�������(KV0����3���	]�xQ�~Y���8�h{ ����9���RcHmEU���5В�]�����%� Ԑ��Ft;�^o{&k���*��#Gmc�����4�-� �$c����G��{�v8V7���x��/H�����/�EY �i���p��̋Kv�W;��STZ]5������1S��S>@:���ρ��Ǉ��!Jw���G�NIg���f��&��sX�@�.��^��k���o`W����GF7GVL�M��g@` j���EԚ9mc���Z�vF!�� |:���ċ3�����0F��(ta�yGQHͱ�vD<�Y�+s�B��V�ޱ��a��E-�7��۳{�D�+,��@ ��?s#]^���i Ȕ ��~7R�,k�"7h�\d�v}�F\뱟��R褢��Ѿ�<��v��l����?�$ᱠ<�l���_�yE�������%��ByV�ܔ��o��=�Z�ݩ׿�<m�,���D
�)#�A�ږ��GU����p�%z�{�C�����"��_��Ъ�<�;%�z�.^����.rT6Sh��Y�[�Fv�$�HռH��q��-�X"&��}��UZ���)8��*�+�RhCJa'��R�*��v��AT#~v^?p+""^v��&�$��|ر���<��J��B.�N�,�0DY���zD�%m��@ѓ�oD�Iۀ�.H�"in�9/A%��/����X��ꯖ��S�A�Pb���0��:��xlť�مB!\v�R]����Qi4�QO")tH��<m�E!��;4?�W�-<B"쉓��n\U1EyN6*�Y�^Q���e[���`��M��Yd�ob�i�!_��~Шl:�M�F,�x9�O#[Y�k���4����'!���jG)4���Ż��f�"��jj
��b͍n+�9��)�������v��C�O�e��� R��B��Jݤ&��I�a�p~�,"������J�YG�aP{�2d���@1$�~����\ɱ��ٽ�jR~ē���Z<˽<?�-GwT�i/��/	��ϨPn� NcE.��X��n}���,��&� �y͍K)���B�^��+
:�2��<H|-;���,Yn0o�=#�B2������k) H�هT�M�T�_�����}H`��HA{a��wpN�Q��8W꾚(ާ��ݳ�2����#E�c�e�znѪ�c]�Yw�E����T�lG����]�{%&C�gY��-0P��5D߁���'��~��1�,M�ؒ��
�{�z�e�H�ސ��Ht�E�Z���s��SoED�Xp�B�Qk^R/�j���}?,��nlD;*l�7)��%q��,h�J@	B�W��=�t��v�V*:^`��lZ�Bo�R#�d�tk&9�WC�S�F��R��s�J@����(�} �I�<�[���{��d�����6sZV`�Ru&����k�Z�]��N�d�w�� �D�L&��۸ǱS,�zz��R܇�#/{��5o������<�JE���#�F���jPώ�9��hhI�(�'��2n3�4�I[q��z�$�'q�;
��8賒5���i��5Qp-�~�+�P�������:�(�� ChHCN"�p���K�3�*�8�07�唁99���љ�[+1��ow��p�g���݁s�7˒�A�qNZ ����fЀ���鉆j4*Yf�J�/ճP+=k��Sn:���:a�ቐ����<�����
��ή4�D/T$���n�V} hQ�v"�h����YԮOog� ��IwZ�N���a�ő��.�Fbe��$`��5�A�(����dΖX�>���~3Ns*��0֪�<��jS}�q�\:-mZF^d�*ٯ| �3��S�{�O�:�Ob��4��'���aO&���J|��kO������ �������Fϙ㓿��b�6�vٍ���ǚ����:E��Aq]�kHʃZ�
����wً����yҁ�=ПL�Ry{�/�{��a&�$o���Z=,�$�۰���\(3/ N��J����b�F������G^P!TZ5��M�����+��/���m�;Zb��ǶV)2���W��;�>�����_���?�À�D��/{'E?m��=|���^��R̯$��=���n7t[��EФ!�IV�-F�F�9��&�n5�o24��b7������]m`?	t4������
X��q���S�ĕ�S�^J��K��&*��3X:��� uwZ�w�q�p�o����U��i9��bh�&r��12~!�(��Y8g����Ch�'��>k���Y�v������Ya��c�6�� '쳀4F����zD';R�/`~3��p"qKSƋg9]ڴ�A"5��)��Isv�Ǳ0z���P�E^�Oh$��(R=��ť�A����l��D	�"]�el3PFS~��A=7 �8���6t��|-Z�#��T0��X�S�zI���f w����#�.^�l�Ѿc�߼�d���F���wl6a~/�eϽ�Hޟ���aT*���Q�>#����H�h-�Q��,��=o&�h���37��ʗ�5�!��K�i8���z�8��(�iX0��ӻ��K���]���1�۠�#�")�`�+-^tW��
Oot���C�,����x���Z�&��F\:�`xP����;��\�����+�U��Ơ���$��8���q��E�R#O��}Q ������5��ս`>W�^q��ou�7PD��:D2�9AC������@�it���G��o����!wb����]����:�.hhc��E�'펅�+�"�Ґ��L^�Q�5y�~�Vt(�o�ݠ��~t�*�p�h_ڱ�+K��Es��?M�%���I77��d*m�3����6��nH�# �ڭ�G�!��lNؘ&�����f�M����1i�%�+Q!�{�����B�ܔ>��y.�ȽX����(�<��p�w(t���uG�WK�9����'�v'����֥%;!��������dP�9�SN��rJEh�A��~��er˻���[:%��%�(�n��$�.+�p�)�I�o|�~�{��8�>\7}����`��YO����ӌ��|~�@g�s8A�u/K�0w�yd�lIi����~&|�V�v��&�ޛ��-�0rd^���Y��dA�d�1d����'٠ݞ��Jc�g�?���egj�y���'^��$�^k�fE8X�����WX���e�TY�t�P$޿����,Z�      I   w  x��Z�n#�='��>�R��6���f0��9�R"���EM-��~��Efɕ��4�)�Ȉ�D0���1��}���u\�}����M
g�aޱ��4�2~�S3t���.#�}��å���B�p��U��)~1�a�;��w�N<�߅[�$S�uK���m�^ۦ��.��J;���?w�X;Hgh�NJ����k���a-�_���s-epX��Y�<����Ra)�Y��/q�����tB�"��E�r,hki]�#��P��j)�t�{�{w�v8愋7����rkZļ�'�/"{� �R�0ȓV���!(��ߖ��ݵ��ͥ?�ˍ.!�/�xH����7�d�A���o6+٭}چr����ߖ�ܥ am.�kk��R)G�8qq��#X!��R�ED.=��ﴲE�_�+���E5~���O���?6�&-{<&�~��o9sX�4��trN��w�6p�p6 ��ߗ>>�}ڱKK�Ջ�s#��1�9q�m��F�<�g�}.׏en�n}֩}���|\�s7��k󗱝��V1de�:���)d"�Ǿ��$�w6�z���[5�w�����s��U�,X�̫��T'�j0����q�2��O�еC�a����H�%�m�>(g�I �ZZ�A��)m+�%��u���H7����x
�>���Y��؟�)�P�/62�E�Q�(Al��i:�$�����z��f�x����.~�����9���T2N�<$t\��f�Q�4�{^��u�E�`T�HcO�v�%#��Ip��}��d7/��x�n��v</�Z��ܿ>j_�2˭�<�ԉc?��Z� ��]z��gw��Ӻ<��,֕H`A@��ŀw�>/h�pi�������?�&(�c��/�G9M���3@1�p@��`�ԡ�p�Mq��껩�1����PM͌C��v����%�7�G�D����"��Ǐ��[�2���T�6G*��ڏ�p�*I	F俌��t�|��]n�(�C�͡2^c2CW���(���� ���י����X�{7����wZR=&�/Po"<n'�I���T�՚9�b�T��z�������ڔp���,pS��Q�� 9U����C� ��!R�nLD �<��/ ���FHp���*�9��)��@	�o˕�C�<'r�(rڄ�:S�A����c�QȓTQ���D���
G�L�î���0< e($B����,,T�J���<�5�&pW��+ \P*�As]��[�|���0R� \��@a���joI��,A����r�ڈ����O�gڔ��������q��Z�Y����| -{zܤ���be�e"&�۝[���
$ujC���`X���E%���c�>P��4uEy��	RZH�,����T$eBV֨}]�`?�k۝��%R��Ls;%��x%�R��c�iB0]_Hq��I���� ��vu�{�)��-J�-����[��hD �B}���3���QHu	����x���;sJ@F�Ė�o|�
�+u�y��4_�>�����Ạ���r�"{�r��x�u�FB"I�AX���|'B �%X>6����r��>���y�JCꛃ���	�0x�u��e�X`	m�X�&>}Euq%A(�_�w���NU�>*
3�`��y<�y��ޯz�-�H`��*n���ʤ�K�
�S��8iy�Q�s�
�c�-�Q�?�|AR*�Dr�r�i�	d���h�g ��7��5�D���;>I��
j �Q�I*ڊ>b�b4��*������� a,��B(\D�5F�hR���zd��o���@���@���[8X7�IǨ]EY�Q>� r�0U�ؾ���JS��_oA��|Ck��	�j�U���r�2c�:k54�	j4�1��Ij9�}N_��T���9��4�;
��j9P��ziׅG�k�M�%�r5��ٕLo�^�э&H?�@e��ۦ����%*�Z���J�%��-�=�b����W��َ}�m�'�5N2G}M����l�&1�HYP��UTQD�z�n�n$��t�-b�4�O�)iKxKv8y�����;By��b��s��A#�D��ɚ��S��'����4�A��U|-�� �p��'-���re�H�Eu,|�I�$�/},#�kr�m��#��7S�l P_���Mj�"d*��a+<=|�G�قӛ��}�&#�أaQ"���W��C;V Uz���F�l�	U��k�Q����Jj�ċ:���QTs�gp㫝�1�6zU
�Oo�c���C%l6�`^����[U�^wy�#,W>�����2�+��}��*^�d��d����X��E�v���F�y*�^<�A �C�6���L�<?FR{�-���fO��l�i�}*m`�*x<��3B%�h�BM>���<��[�� ���&a��	��bK$��Ll�/`B�{.^m��YS����tk��[dxl�'�E�A���a��E5�n�˽��d\^{�I9�=V��?.HaY�m�����H2a�:��ƍM܁�έ�ny�b�]��W*	SA�I���I�_�ײ��s"U
�[�X�a�<�ʎ/[n�qw�hd�}ƥ(U�W2�0�I�݇�tZ��H0vc�&.�m��΋D�R���L��$��T\�yׄ.�]�H�m��к�aF��T��4l�4l(���]�����<u� ��W�<��͊� 7�������iy�S&�pRȠʨK���ȵ_�m��<�G��r#xH>� �ʨK@"�J�~$��)�Hs���iW��g.�}t��!"i���F��H	&�>���f�*���Ԡ�mb��6^P|�V��?F���<�xd�TD�ck��2	S�{i����~!���m�T�Hg�QH!{*#0ࡅ_��s��~b��6��-0j.7.
�2��F�@�e=Ri�!���~��t�J7�K+�E:�1u矪�у�0F���_^O�4��$@���&%FL�(�VH�4B�/�R��2E,$�_3�U�N��U�f#Rd�8�/	D>f��ԩ��BZ���vm��+F�*j@ƙ��T��hE��j;F�9����~ƅ� ��p�PhVg��H�J��a��H�(�)�sm{u�2I9���d|�S²��eT���t���JQϜ˓{R�����A�{`mɸ�#�% ڵt�:o���=O�U�]*.=����c�p�T�����(�_5V:�:�9���L�I�L�r[qPm\�I�FQT���5j6�S0�F�t_v-&U�h�])��~�L�KFث���$�A�m�@Q^��*c�m�l��T��j�TL�3Tl��A��:>&����Žٰ2�t����Z�����造��4���I	�'F��*�B�!*�{�:�z˅jr;�q���R�Ǚ9)�ʔ@XA�4�����]K$7�~��r����	�)��	��8"U!g�Pi�2&8��?��4T=f"	����n4e��06��t�<�] � ��Kf,�K�w#�4.݈�VU�F��vg�a�
3A:����!������S�j�DC����ehR"{��䭣`��QuP�V��ڣ�I���ؒ�ElJ����y�ф�������9�#�$5�W]+������m�he	�SPyƠ56��:}Ԋ���و��Zi�6�8?���p8�!D�     