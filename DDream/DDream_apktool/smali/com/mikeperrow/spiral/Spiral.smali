.class public Lcom/mikeperrow/spiral/Spiral;
.super Ljava/lang/Object;
.source "Spiral.java"

# interfaces
.implements Lcom/mikeperrow/android/opengl2d/GLDrawable;


# instance fields
.field private bgColor_:[F

.field private lastTime_:J

.field private rotationSpeed_:F

.field private spiralCoils_:I

.field private spiralColor_:[F

.field private spiralRadius_:D

.field private spiralSegments_:I

.field private vertices_:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(IID)V
    .locals 3
    .parameter "coils"
    .parameter "segments"
    .parameter "radius"

    .prologue
    const/4 v2, 0x3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/mikeperrow/spiral/Spiral;->rotationSpeed_:F

    .line 22
    new-array v1, v2, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/mikeperrow/spiral/Spiral;->spiralColor_:[F

    .line 23
    new-array v1, v2, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/mikeperrow/spiral/Spiral;->bgColor_:[F

    .line 26
    iput p1, p0, Lcom/mikeperrow/spiral/Spiral;->spiralCoils_:I

    .line 27
    iput p2, p0, Lcom/mikeperrow/spiral/Spiral;->spiralSegments_:I

    .line 28
    iput-wide p3, p0, Lcom/mikeperrow/spiral/Spiral;->spiralRadius_:D

    .line 31
    iget v1, p0, Lcom/mikeperrow/spiral/Spiral;->spiralSegments_:I

    mul-int/lit8 v1, v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 32
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/mikeperrow/spiral/Spiral;->vertices_:Ljava/nio/FloatBuffer;

    .line 34
    invoke-virtual {p0}, Lcom/mikeperrow/spiral/Spiral;->generateSpiralSegments()V

    .line 35
    iget-object v1, p0, Lcom/mikeperrow/spiral/Spiral;->vertices_:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mikeperrow/spiral/Spiral;->lastTime_:J

    .line 38
    return-void

    .line 22
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 23
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private declared-synchronized getRotationSpeed()F
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mikeperrow/spiral/Spiral;->rotationSpeed_:F
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
.method public declared-synchronized changeRotationSpeed(F)V
    .locals 1
    .parameter "change"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mikeperrow/spiral/Spiral;->rotationSpeed_:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/mikeperrow/spiral/Spiral;->rotationSpeed_:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .parameter "gl"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 44
    const/16 v2, 0x1700

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    .local v0, now:J
    invoke-direct {p0}, Lcom/mikeperrow/spiral/Spiral;->getRotationSpeed()F

    move-result v2

    iget-wide v3, p0, Lcom/mikeperrow/spiral/Spiral;->lastTime_:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-interface {p1, v2, v8, v8, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 47
    iput-wide v0, p0, Lcom/mikeperrow/spiral/Spiral;->lastTime_:J

    .line 49
    iget-object v2, p0, Lcom/mikeperrow/spiral/Spiral;->bgColor_:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/mikeperrow/spiral/Spiral;->bgColor_:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/mikeperrow/spiral/Spiral;->bgColor_:[F

    aget v4, v4, v7

    invoke-interface {p1, v2, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 50
    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 51
    const v2, 0x8074

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 52
    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/mikeperrow/spiral/Spiral;->vertices_:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v7, v2, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 53
    iget-object v2, p0, Lcom/mikeperrow/spiral/Spiral;->spiralColor_:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/mikeperrow/spiral/Spiral;->spiralColor_:[F

    aget v3, v3, v9

    iget-object v4, p0, Lcom/mikeperrow/spiral/Spiral;->spiralColor_:[F

    aget v4, v4, v7

    invoke-interface {p1, v2, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 54
    const/4 v2, 0x5

    iget v3, p0, Lcom/mikeperrow/spiral/Spiral;->spiralSegments_:I

    mul-int/lit8 v3, v3, 0x2

    invoke-interface {p1, v2, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 55
    iget-object v2, p0, Lcom/mikeperrow/spiral/Spiral;->vertices_:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    return-void
.end method

.method public generateSpiralSegments()V
    .locals 19

    .prologue
    .line 60
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/Spiral;->spiralCoils_:I

    move v13, v0

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/Spiral;->spiralSegments_:I

    move v15, v0

    int-to-double v15, v15

    div-double/2addr v13, v15

    .line 61
    const-wide/high16 v15, 0x4000

    .line 60
    mul-double/2addr v13, v15

    .line 61
    const-wide v15, 0x400921fb54442d18L

    .line 60
    mul-double v9, v13, v15

    .line 62
    .local v9, stepRotation:D
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/Spiral;->spiralSegments_:I

    move v13, v0

    if-le v4, v13, :cond_0

    .line 78
    return-void

    .line 63
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mikeperrow/spiral/Spiral;->spiralRadius_:D

    move-wide v13, v0

    int-to-double v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/Spiral;->spiralSegments_:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-float v13, v13

    float-to-double v2, v13

    .line 64
    .local v2, distanceFromCentre:D
    int-to-double v13, v4

    mul-double v7, v13, v9

    .line 65
    .local v7, rotation:D
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v2

    double-to-float v11, v13

    .line 66
    .local v11, x:F
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v2

    double-to-float v12, v13

    .line 67
    .local v12, y:F
    const/4 v13, 0x2

    new-array v6, v13, [F

    const/4 v13, 0x0

    aput v11, v6, v13

    const/4 v13, 0x1

    aput v12, v6, v13

    .line 68
    .local v6, point:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mikeperrow/spiral/Spiral;->vertices_:Ljava/nio/FloatBuffer;

    move-object v13, v0

    invoke-virtual {v13, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 72
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mikeperrow/spiral/Spiral;->spiralRadius_:D

    move-wide v13, v0

    int-to-double v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/Spiral;->spiralSegments_:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    const-wide v17, 0x3ff0ccccc0000000L

    mul-double v15, v15, v17

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-float v13, v13

    float-to-double v2, v13

    .line 73
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v2

    double-to-float v11, v13

    .line 74
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v2

    double-to-float v12, v13

    .line 75
    const/4 v13, 0x2

    new-array v5, v13, [F

    const/4 v13, 0x0

    aput v11, v5, v13

    const/4 v13, 0x1

    aput v12, v5, v13

    .line 76
    .local v5, outerPoint:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mikeperrow/spiral/Spiral;->vertices_:Ljava/nio/FloatBuffer;

    move-object v13, v0

    invoke-virtual {v13, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setColor([F[F)V
    .locals 0
    .parameter "spiralColor"
    .parameter "bgColor"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mikeperrow/spiral/Spiral;->spiralColor_:[F

    .line 82
    iput-object p2, p0, Lcom/mikeperrow/spiral/Spiral;->bgColor_:[F

    .line 83
    return-void
.end method
