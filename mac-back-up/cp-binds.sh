#! /bin/zsh  
echo Kopiëren van bind-files naar META-INF directories binnen de target directory...
cd ~/ws/ibs-auto/ahm/ahm/
cp */**/ahm-fabriek-ear/src/main/application/META-INF/ibm-application-bnd.xml */**/ahm-fabriek-ear/target/*/META-INF
cp */**/ahm-webservices-ear/src/main/application/META-INF/ibm-application-bnd.xml */**/ahm-webservices-ear/target/*/META-INF
cp */**/ahm-kantoor-ear/src/main/application/META-INF/ibm-application-bnd.xml */**/ahm-kantoor-ear/target/*/META-INF
cp */**/ahm-gegevensservices-ear/src/main/application/META-INF/ibm-application-bnd.xml */**/ahm-gegevensservices-ear/target/*/META-INF
cp */**/ahm-hsb-ear/src/main/application/META-INF/ibm-application-bnd.xml */**/ahm-hsb-ear/target/*/META-INF
cp */**/ahm-pgf-ear/src/main/application/META-INF/ibm-application-bnd.xml */**/ahm-pgf-ear/target/*/META-INF
cp */**/ahm-raadpleegservices-ear/src/main/application/META-INF/ibm-application-bnd.xml */**/ahm-raadpleegservices-ear/target/*/META-INF/

echo Kopiëren van ejb bind-files naar META-INF directories binnen de target directory...
cp */**/ahm-fabriek-ejb/src/main/resources/META-INF/ibm-ejb-jar-bnd.xml ahm-fabriek/ahm-fabriek-ejb/target/ahm-fabriek-ejb-*/META-INF/

echo Kopiëren van web bind-files naar WEB-INF en META-INF directories binnen de target directory
cp */**/ahm-fabriek-ejb/src/main/resources/META-INF/ibm-ejb-jar-bnd.xml ahm-fabriek/ahm-fabriek-ejb/target/ahm-fabriek-ejb-*/META-INF/
cp */**/ahm-webservices-ws/src/main/webapp/WEB-INF/ibm-web-bnd.xml ahm-webservices/ahm-webservices-ws/target/ahm-webservices-ws-*/WEB-INF/
