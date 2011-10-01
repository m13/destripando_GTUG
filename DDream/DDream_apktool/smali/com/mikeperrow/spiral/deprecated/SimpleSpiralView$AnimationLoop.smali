.class Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView$AnimationLoop;
.super Ljava/lang/Object;
.source "SimpleSpiralView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;


# direct methods
.method constructor <init>(Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView$AnimationLoop;->this$0:Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    :goto_0
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    iget-object v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView$AnimationLoop;->this$0:Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;

    invoke-static {v0}, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->access$0(Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;)V

    .line 78
    iget-object v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView$AnimationLoop;->this$0:Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;

    invoke-virtual {v0}, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->postInvalidate()V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    goto :goto_1
.end method
