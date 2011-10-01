.class public Lcom/mikeperrow/android/opengl2d/DrawThread;
.super Ljava/lang/Thread;
.source "DrawThread.java"


# instance fields
.field done_:Z

.field private eglContext_:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface_:Ljavax/microedition/khronos/egl/EGLSurface;

.field private height_:I

.field objects_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mikeperrow/android/opengl2d/GLDrawable;",
            ">;"
        }
    .end annotation
.end field

.field surfaceView_:Landroid/view/SurfaceView;

.field private width_:I


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Ljava/util/List;II)V
    .locals 1
    .parameter "view"
    .parameter
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceView;",
            "Ljava/util/List",
            "<",
            "Lcom/mikeperrow/android/opengl2d/GLDrawable;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Lcom/mikeperrow/android/opengl2d/GLDrawable;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->done_:Z

    .line 35
    iput-object p2, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->objects_:Ljava/util/List;

    .line 36
    iput p3, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->width_:I

    .line 37
    iput p4, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->height_:I

    .line 38
    iput-object p1, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->surfaceView_:Landroid/view/SurfaceView;

    .line 39
    return-void
.end method

.method private getEGL()Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/mikeperrow/android/opengl2d/GLHelper;->getEGL()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    return-object v0
.end method

.method private getGL()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglContext_:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v0}, Lcom/mikeperrow/android/opengl2d/GLHelper;->getGL(Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getHeight()I
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->height_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getWidth()I
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->width_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->done_:Z

    .line 130
    return-void
.end method

.method public init()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x1

    const/4 v13, 0x0

    .line 79
    invoke-direct {p0}, Lcom/mikeperrow/android/opengl2d/DrawThread;->getEGL()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    .line 82
    .local v0, egl:Ljavax/microedition/khronos/egl/EGL10;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 85
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 86
    .local v9, version:[I
    iget-object v1, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 90
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 94
    .local v2, configSpec:[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 95
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v4, [I

    .line 96
    .local v5, num_config:[I
    iget-object v1, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 97
    aget-object v6, v3, v13

    .line 101
    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v1, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v6, v4, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglContext_:Ljavax/microedition/khronos/egl/EGLContext;

    .line 104
    iget-object v1, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->surfaceView_:Landroid/view/SurfaceView;

    invoke-interface {v0, v1, v6, v4, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglSurface_:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 108
    iget-object v1, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglSurface_:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v11, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglSurface_:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v12, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglContext_:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v4, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 111
    invoke-direct {p0}, Lcom/mikeperrow/android/opengl2d/DrawThread;->getGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v7

    .line 112
    .local v7, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/16 v1, 0xb71

    invoke-interface {v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 113
    const/16 v1, 0x1701

    invoke-interface {v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 114
    invoke-interface {v7}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 115
    invoke-direct {p0}, Lcom/mikeperrow/android/opengl2d/DrawThread;->getWidth()I

    move-result v10

    .local v10, width:I
    invoke-direct {p0}, Lcom/mikeperrow/android/opengl2d/DrawThread;->getHeight()I

    move-result v8

    .line 116
    .local v8, height:I
    int-to-float v1, v10

    int-to-float v4, v8

    invoke-static {v7, v14, v1, v4, v14}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 117
    invoke-interface {v7, v13, v13, v10, v8}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 120
    const/high16 v1, 0x40a0

    invoke-interface {v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 121
    const/16 v1, 0xb20

    invoke-interface {v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 122
    const/16 v1, 0xbe2

    invoke-interface {v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 123
    const/16 v1, 0x302

    const/16 v4, 0x303

    invoke-interface {v7, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 124
    const/16 v1, 0xc52

    const/16 v4, 0x1102

    invoke-interface {v7, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 125
    const/16 v1, 0xbd0

    invoke-interface {v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 126
    return-void

    .line 90
    :array_0
    .array-data 0x4
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public run()V
    .locals 9

    .prologue
    const/high16 v6, 0x4000

    .line 51
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->done_:Z

    .line 52
    invoke-virtual {p0}, Lcom/mikeperrow/android/opengl2d/DrawThread;->init()V

    .line 54
    invoke-direct {p0}, Lcom/mikeperrow/android/opengl2d/DrawThread;->getEGL()Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    .line 55
    .local v0, egl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-direct {p0}, Lcom/mikeperrow/android/opengl2d/DrawThread;->getGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    .line 57
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL10;
    invoke-direct {p0}, Lcom/mikeperrow/android/opengl2d/DrawThread;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v5, v6

    .line 58
    .local v2, halfX:F
    invoke-direct {p0}, Lcom/mikeperrow/android/opengl2d/DrawThread;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v5, v6

    .line 59
    .local v3, halfY:F
    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 61
    :goto_0
    iget-boolean v5, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->done_:Z

    if-eqz v5, :cond_0

    .line 70
    iget-object v5, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 71
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 70
    invoke-interface {v0, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 72
    iget-object v5, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglSurface_:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 73
    iget-object v5, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglContext_:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 74
    iget-object v5, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 75
    return-void

    .line 63
    :cond_0
    iget-object v5, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->objects_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 66
    iget-object v5, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglDisplay_:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->eglSurface_:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikeperrow/android/opengl2d/GLDrawable;

    .line 64
    .local v4, object:Lcom/mikeperrow/android/opengl2d/GLDrawable;
    invoke-interface {v4, v1}, Lcom/mikeperrow/android/opengl2d/GLDrawable;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_1
.end method

.method public declared-synchronized setSize(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mikeperrow/android/opengl2d/DrawThread;->getGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 135
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL10;
    iget v1, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->width_:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->height_:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 136
    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0           #gl:Ljavax/microedition/khronos/opengles/GL10;
    :goto_0
    :try_start_1
    iput p1, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->width_:I

    .line 141
    iput p2, p0, Lcom/mikeperrow/android/opengl2d/DrawThread;->height_:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method
