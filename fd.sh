fd.sh

cd ~/tools/findomain
 cargo build --release
 sudo cp target/release/findomain /usr/bin/
 cd ~/tools/
findomain_fb_token="532593827543913|gPyedpVzuhAsdrKDOZXzs7VEQDg" findomain -(options)
findomain_spyse_token="qvPoQzcJ1lR9z-zT1vsDXYkU1J06TZ_7" findomain -(options)
findomain_virustotal_token="b865fc3287f443914f8cf5b03e8231de4bf9dbfbb6b151118851a22ae0044ee5" findomain -(options)
export findomain_fb_token="532593827543913|gPyedpVzuhAsdrKDOZXzs7VEQDg" 
export findomain_spyse_token="qvPoQzcJ1lR9z-zT1vsDXYkU1J06TZ_7"
export findomain_virustotal_token="b865fc3287f443914f8cf5b03e8231de4bf9dbfbb6b151118851a22ae0044ee5" 

echo 'export findomain_fb_token="532593827543913|gPyedpVzuhAsdrKDOZXzs7VEQDg" '  >> ~/.bashrc
echo 'export findomain_spyse_token="qvPoQzcJ1lR9z-zT1vsDXYkU1J06TZ_7"' >> ~/.bashrc
echo 'export findomain_virustotal_token="b865fc3287f443914f8cf5b03e8231de4bf9dbfbb6b151118851a22ae0044ee5"' >> ~/.bashrc

