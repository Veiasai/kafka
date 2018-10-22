for i in 3 4;do
    id=slave-${i}
    ssh $id > /dev/null 2>&1 << eeooff
    cat >> /etc/profile << EOF
export JAVA_HOME=/usr/lib/jvm/java-1.8.0
export CLASSPATH=\$JAVA_HOME/jre/lib:\$JAVAHOME/lib
export PATH=\$PATH:\$JAVA_HOME/bin
EOF
exit
eeooff
done