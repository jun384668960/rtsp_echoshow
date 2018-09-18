1. live555静态库编译
	进入live目录
	./genMakefiles linuxTls
	make
	./install.sh
	
2. 应用live555的库
	将live目录下执行./install.sh后产生的install目录里面的内容全部复制到PlatformRtspServer目录
	PlatformRtspServer目录执行make即可生成rtspServer可执行程序

3. 服务部署
	1）安装mysql数据库
	2）执行database.sh脚本初始化数据库，注意修改脚本里面的数据库用户名和密码（若跟nginx_hls部署在同一服务器，且nginx_hls已经初始化数据了，则此步骤不需要）
	3）修改gss_globle.conf配置文件，配置意思请自行查看配置里面的注释
	

4. 执行程序
	后台直接执行rtspServer即可，无需启动参数，参数将从gss_globle.conf配置文件中读取
	
5. 其他脚本介绍
	time_reset.sh	--	时间清理脚本
	uid_select.sh	--	查询信息脚本
	例
	time_reset.sh	Z99O61109UBL7YCMYN9FV9GR111A
	uid_select.sh 	Z99O61109UBL7YCMYN9FV9GR111A

6. 国内外差异
	1）gss_globle.conf配置里面的server属性
		国内：cnp2p.ulifecam.com:6001
		国外：enp2p.ulifecam.com:6001
	2）证书差异cert.key cert.pem
		请找证书负责人拿对应的证书

7. 注意点
	1）请在rtspServer所在目录运行，提示443端口不可用则sudo执行
	2）请创建logs目录，否则日志文件不可用
	3）请把gss_globle.conf放在运行目录，否则无法加载启动参数
	4）修改gss_globle.conf文件里面的server属性即可区分国内外

8. VLC看图
	URL格式：
	rtsp://en-gosrtsp-camera.ulifecam.com:554/uid=Z99O61109UBL7YCMYN9FV9GR111A
	其中
	Z99O61109UBL7YCMYN9FV9GR111A为设备UID
	cn-gosrtsp-camera.ulifecam.com为国内域名国外则en-gosrtsp-camera.ulifecam.com
	注：VLC只能用554端口，支持TLS协议的443端口需要用 echo show 设备
