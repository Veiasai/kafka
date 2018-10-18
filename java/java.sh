for i in 5 6 7 8;do
    id=slave-${i}
    ssh $id > /dev/null 2>&1 << eeooff
    cat >> /etc/profile << EOF
    JAVA_HOME=/root/jdk1.8.0_191
    export JRE_HOME=/root/jdk1.8.0_191/jre
    export CLASSPATH=.:\$JAVA_HOME/lib:\$JRE_HOME/lib:\$CLASSPATH
    export PATH=\$JAVA_HOME/bin:\$JRE_HOME/bin:\$PATH
eeooff
done