.class public Lcom/mikeperrow/spiral/SpiralOpenGLView;
.super Landroid/view/SurfaceView;
.source "SpiralOpenGLView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikeperrow/spiral/SpiralOpenGLView$ScrollDetector;
    }
.end annotation


# instance fields
.field private gestureDetector_:Landroid/view/GestureDetector;

.field private rotationSpeed_:F

.field private scrollDetector_:Lcom/mikeperrow/spiral/SpiralOpenGLView$ScrollDetector;

.field private spiral_:Lcom/mikeperrow/spiral/Spiral;

.field private thread_:Lcom/mikeperrow/android/opengl2d/DrawThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mikeperrow/spiral/Spiral;F)V
    .locals 3
    .parameter "context"
    .parameter "spiral"
    .parameter "rotationSpeed"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 31
    iput p3, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->rotationSpeed_:F

    .line 32
    iput-object p2, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->spiral_:Lcom/mikeperrow/spiral/Spiral;

    .line 34
    invoke-virtual {p0}, Lcom/mikeperrow/spiral/SpiralOpenGLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 35
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 36
    invoke-virtual {p0}, Lcom/mikeperrow/spiral/SpiralOpenGLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 38
    new-instance v1, Lcom/mikeperrow/spiral/SpiralOpenGLView$ScrollDetector;

    invoke-direct {v1, p0}, Lcom/mikeperrow/spiral/SpiralOpenGLView$ScrollDetector;-><init>(Lcom/mikeperrow/spiral/SpiralOpenGLView;)V

    iput-object v1, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->scrollDetector_:Lcom/mikeperrow/spiral/SpiralOpenGLView$ScrollDetector;

    .line 39
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->scrollDetector_:Lcom/mikeperrow/spiral/SpiralOpenGLView$ScrollDetector;

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->gestureDetector_:Landroid/view/GestureDetector;

    .line 40
    iget-object v1, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->gestureDetector_:Landroid/view/GestureDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/mikeperrow/spiral/SpiralOpenGLView;)Lcom/mikeperrow/spiral/Spiral;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->spiral_:Lcom/mikeperrow/spiral/Spiral;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getRotationSpeed()F
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->rotationSpeed_:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->gestureDetector_:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized setRotationSpeed(F)V
    .locals 1
    .parameter "newSpeed"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->rotationSpeed_:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->thread_:Lcom/mikeperrow/android/opengl2d/DrawThread;

    invoke-virtual {v0, p3, p4}, Lcom/mikeperrow/android/opengl2d/DrawThread;->setSize(II)V

    .line 60
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/mikeperrow/android/opengl2d/GLDrawable;>;"
    iget-object v1, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->spiral_:Lcom/mikeperrow/spiral/Spiral;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/mikeperrow/android/opengl2d/DrawThread;

    invoke-virtual {p0}, Lcom/mikeperrow/spiral/SpiralOpenGLView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/mikeperrow/spiral/SpiralOpenGLView;->getHeight()I

    move-result v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/mikeperrow/android/opengl2d/DrawThread;-><init>(Landroid/view/SurfaceView;Ljava/util/List;II)V

    iput-object v1, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->thread_:Lcom/mikeperrow/android/opengl2d/DrawThread;

    .line 48
    iget-object v1, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->thread_:Lcom/mikeperrow/android/opengl2d/DrawThread;

    invoke-virtual {v1}, Lcom/mikeperrow/android/opengl2d/DrawThread;->start()V

    .line 49
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mikeperrow/spiral/SpiralOpenGLView;->thread_:Lcom/mikeperrow/android/opengl2d/DrawThread;

    invoke-virtual {v0}, Lcom/mikeperrow/android/opengl2d/DrawThread;->exit()V

    .line 54
    return-void
.end method
