1. live555��̬�����
	����liveĿ¼
	./genMakefiles linuxTls
	make
	./install.sh
	
2. Ӧ��live555�Ŀ�
	��liveĿ¼��ִ��./install.sh�������installĿ¼���������ȫ�����Ƶ�PlatformRtspServerĿ¼
	PlatformRtspServerĿ¼ִ��make��������rtspServer��ִ�г���

3. ������
	1����װmysql���ݿ�
	2��ִ��database.sh�ű���ʼ�����ݿ⣬ע���޸Ľű���������ݿ��û��������루����nginx_hls������ͬһ����������nginx_hls�Ѿ���ʼ�������ˣ���˲��費��Ҫ��
	3���޸�gss_globle.conf�����ļ���������˼�����в鿴���������ע��
	

4. ִ�г���
	��ֱ̨��ִ��rtspServer���ɣ�����������������������gss_globle.conf�����ļ��ж�ȡ
	
5. �����ű�����
	time_reset.sh	--	ʱ������ű�
	uid_select.sh	--	��ѯ��Ϣ�ű�
	��
	time_reset.sh	Z99O61109UBL7YCMYN9FV9GR111A
	uid_select.sh 	Z99O61109UBL7YCMYN9FV9GR111A

6. ���������
	1��gss_globle.conf���������server����
		���ڣ�cnp2p.ulifecam.com:6001
		���⣺enp2p.ulifecam.com:6001
	2��֤�����cert.key cert.pem
		����֤�鸺�����ö�Ӧ��֤��

7. ע���
	1������rtspServer����Ŀ¼���У���ʾ443�˿ڲ�������sudoִ��
	2���봴��logsĿ¼��������־�ļ�������
	3�����gss_globle.conf��������Ŀ¼�������޷�������������
	4���޸�gss_globle.conf�ļ������server���Լ������ֹ�����

8. VLC��ͼ
	URL��ʽ��
	rtsp://en-gosrtsp-camera.ulifecam.com:554/uid=Z99O61109UBL7YCMYN9FV9GR111A
	����
	Z99O61109UBL7YCMYN9FV9GR111AΪ�豸UID
	cn-gosrtsp-camera.ulifecam.comΪ��������������en-gosrtsp-camera.ulifecam.com
	ע��VLCֻ����554�˿ڣ�֧��TLSЭ���443�˿���Ҫ�� echo show �豸
