.class Lcom/android/root/AlarmReceiver$1;
.super Ljava/lang/Thread;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/root/AlarmReceiver;->dopermroot(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/root/AlarmReceiver;

.field private final synthetic val$in:Ljava/io/FileInputStream;


# direct methods
.method constructor <init>(Lcom/android/root/AlarmReceiver;Ljava/io/FileInputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/root/AlarmReceiver$1;->this$0:Lcom/android/root/AlarmReceiver;

    iput-object p2, p0, Lcom/android/root/AlarmReceiver$1;->val$in:Ljava/io/FileInputStream;

    .line 111
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 114
    .local v0, mBuffer:[B
    const/4 v1, 0x0

    .line 115
    .local v1, read:I
    :cond_0
    :goto_0
    if-gez v1, :cond_1

    .line 131
    :goto_1
    iget-object v3, p0, Lcom/android/root/AlarmReceiver$1;->this$0:Lcom/android/root/AlarmReceiver;

    invoke-static {v3}, Lcom/android/root/AlarmReceiver;->access$0(Lcom/android/root/AlarmReceiver;)V

    .line 133
    return-void

    .line 117
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/root/AlarmReceiver$1;->val$in:Ljava/io/FileInputStream;

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 118
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 122
    .local v2, str:Ljava/lang/String;
    const-string v3, "finished checked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 126
    .end local v2           #str:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
