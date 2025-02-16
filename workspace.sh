rm  "C:\Users\IQ-Ajay\Downloads\*.jar" -Force


#####################################################################################
###################### PT001 - IQCloud - Workspace - 3.19.11 - ######################
#####################################################################################


scp -i "C:\Users\IQ-Ajay\Downloads\pt001Pem.pem" "C:\Users\IQ-Ajay\Desktop\pt-001\pt001-core-api\build\libs\iqcloud-core-api-3.19.11.jar" ec2-user@ec2-13-234-29-217.ap-south-1.compute.amazonaws.com:/tmp/
scp -i "C:\Users\IQ-Ajay\Downloads\pt001Pem.pem" "C:\Users\IQ-Ajay\Downloads\iqcloud-core-api-3.19.11.jar" ec2-user@ec2-13-234-29-217.ap-south-1.compute.amazonaws.com:/tmp/


ssh -i "C:\Users\IQ-Ajay\Downloads\pt001Pem.pem" ec2-user@ec2-13-234-29-217.ap-south-1.compute.amazonaws.com
sudo su - pt001
cd /home/pt001/api/old && rm -rf *
mv /home/pt001/api/iqcloud-core-api.jar /home/pt001/api/old/iqcloud-core-api-$(date +%Y%m%d%H%M%S).jar
cp /tmp/iqcloud-core-api-3.19.11.jar /home/pt001/api/iqcloud-core-api.jar
cd /home/pt001/api && ./restart.sh
#####################################################################################


# #####################################################################################
# #################### PD006 - SCHEDULER - Workspace - 3.19.11 - ######################
# #####################################################################################

# scp -i "C:\Users\IQ-Ajay\Downloads\pt001Pem.pem" "C:\Users\IQ-Ajay\Desktop\pt-001\pd006-scheduler-api\build\libs\iqcloud-scheduler-api-3.19.11.jar" ec2-user@ec2-13-201-106-149.ap-south-1.compute.amazonaws.com:/tmp/
# scp -i "C:\Users\IQ-Ajay\Downloads\pt001Pem.pem" "C:\Users\IQ-Ajay\Downloads\iqcloud-scheduler-api-3.19.11.jar" ec2-user@ec2-13-201-106-149.ap-south-1.compute.amazonaws.com:/tmp/

# ssh -i "C:\Users\IQ-Ajay\Downloads\pt001Pem.pem" ec2-user@ec2-13-201-106-149.ap-south-1.compute.amazonaws.com
# sudo su - pt001
# cd /home/pt001/api/old && rm -rf *
# mv /home/pt001/api/iqcloud-scheduler-api.jar /home/pt001/api/old/iqcloud-scheduler-api-$(date +%Y%m%d%H%M%S).jar
# cp /tmp/iqcloud-scheduler-api-3.19.11.jar /home/pt001/api/iqcloud-scheduler-api.jar
# cd /home/pt001/api && ./restart.sh
# #####################################################################################



# #####################################################################################
# #################### WB001 - HEALTH - Workspace - 3.19.11 - #########################
# #####################################################################################


# scp -i "C:\Users\IQ-Ajay\Downloads\pt001Pem.pem" "C:\Users\IQ-Ajay\Desktop\pt-001\wb001-health-api\build\libs\iqcloud-health-api-3.19.11.jar" ec2-user@ec2-13-234-11-107.ap-south-1.compute.amazonaws.com:/tmp/
# scp -i "C:\Users\IQ-Ajay\Downloads\pt001Pem.pem" "C:\Users\IQ-Ajay\Downloads\iqcloud-health-api-3.19.11.jar" ec2-user@ec2-13-234-11-107.ap-south-1.compute.amazonaws.com:/tmp/

# ssh -i "C:\Users\IQ-Ajay\Downloads\pt001Pem.pem" ec2-user@ec2-13-234-11-107.ap-south-1.compute.amazonaws.com
# sudo su - pt001
# cd /home/pt001/api/old && rm -rf *
# mv /home/pt001/api/iqcloud-health-api.jar /home/pt001/api/old/iqcloud-health-api-$(date +%Y%m%d%H%M%S).jar
# cp /tmp/iqcloud-health-api-3.19.11.jar /home/pt001/api/iqcloud-health-api.jar
# cd /home/pt001/api && ./restart.sh
# #####################################################################################

