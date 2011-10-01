.class Lcom/mikeperrow/spiral/SpiralOpenGLView$ScrollDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SpiralOpenGLView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikeperrow/spiral/SpiralOpenGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikeperrow/spiral/SpiralOpenGLView;


# direct methods
.method constructor <init>(Lcom/mikeperrow/spiral/SpiralOpenGLView;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView$ScrollDetector;->this$0:Lcom/mikeperrow/spiral/SpiralOpenGLView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView$ScrollDetector;->this$0:Lcom/mikeperrow/spiral/SpiralOpenGLView;

    invoke-static {v0}, Lcom/mikeperrow/spiral/SpiralOpenGLView;->access$0(Lcom/mikeperrow/spiral/SpiralOpenGLView;)Lcom/mikeperrow/spiral/Spiral;

    move-result-object v0

    const v1, 0x3ba3d70a

    mul-float/2addr v1, p4

    invoke-virtual {v0, v1}, Lcom/mikeperrow/spiral/Spiral;->changeRotationSpeed(F)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method
