.class public Lcom/mikeperrow/android/opengl2d/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static final DEBUG_MODE:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEGL()Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method public static getGL(Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-virtual {p0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/microedition/khronos/opengles/GL10;

    return-object p0
.end method
