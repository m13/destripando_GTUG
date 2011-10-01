.class public Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;
.super Landroid/view/View;
.source "SimpleSpiralView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView$AnimationLoop;
    }
.end annotation


# static fields
.field public static final ANIMATION_SPEED:D = 0.01


# instance fields
.field animationRotation_:D

.field private centerX:I

.field private centerY:I

.field lastUpdated_:J

.field paint_:Landroid/graphics/Paint;

.field private spiralCoils_:I

.field spiralRadius_:D

.field private spiralSegments_:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IID)V
    .locals 2
    .parameter "context"
    .parameter "coils"
    .parameter "segments"
    .parameter "radius"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    const-wide v0, 0x4077200000000000L

    iput-wide v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->spiralRadius_:D

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->animationRotation_:D

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->paint_:Landroid/graphics/Paint;

    .line 21
    iget-object v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->paint_:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->paint_:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 23
    invoke-virtual {p0}, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->centerX:I

    .line 24
    invoke-virtual {p0}, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->centerY:I

    .line 26
    iput p2, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->spiralCoils_:I

    .line 27
    iput p3, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->spiralSegments_:I

    .line 28
    iput-wide p4, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->spiralRadius_:D

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView$AnimationLoop;

    invoke-direct {v1, p0}, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView$AnimationLoop;-><init>(Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->updateState()V

    return-void
.end method

.method private declared-synchronized updateState()V
    .locals 8

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    .local v0, now:J
    iget-wide v2, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->animationRotation_:D

    const-wide v4, 0x3f847ae147ae147bL

    iget-wide v6, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->lastUpdated_:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide v6, 0x401921fb54442d18L

    rem-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->animationRotation_:D

    .line 65
    iput-wide v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->lastUpdated_:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 63
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->spiralCoils_:I

    move v4, v0

    move v0, v4

    int-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->spiralSegments_:I

    move v4, v0

    move v0, v4

    int-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    .line 45
    const-wide/high16 v19, 0x4000

    .line 44
    mul-double v17, v17, v19

    .line 45
    const-wide v19, 0x400921fb54442d18L

    .line 44
    mul-double v15, v17, v19

    .line 47
    .local v15, stepRotation:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->centerX:I

    move v4, v0

    int-to-float v5, v4

    .local v5, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->centerY:I

    move v4, v0

    int-to-float v6, v4

    .line 48
    .local v6, y:F
    const/16 v12, 0x1e

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->spiralSegments_:I

    move v4, v0

    if-le v12, v4, :cond_0

    .line 58
    return-void

    .line 49
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->spiralRadius_:D

    move-wide/from16 v17, v0

    move v0, v12

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->spiralSegments_:I

    move v4, v0

    move v0, v4

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move v4, v0

    float-to-double v10, v4

    .line 50
    .local v10, distanceFromCentre:D
    move v0, v12

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->animationRotation_:D

    move-wide/from16 v19, v0

    add-double v13, v17, v19

    .line 51
    .local v13, rotation:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->centerX:I

    move v4, v0

    move v0, v4

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v10

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move v7, v0

    .line 52
    .local v7, newX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->centerY:I

    move v4, v0

    move v0, v4

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v10

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move v8, v0

    .line 53
    .local v8, newY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->paint_:Landroid/graphics/Paint;

    move-object v4, v0

    const-wide v17, 0x3ff6666666666666L

    move-wide v0, v10

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move v9, v0

    const v10, 0x3cf5c28f

    mul-float/2addr v9, v10

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    .end local v10           #distanceFromCentre:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->paint_:Landroid/graphics/Paint;

    move-object v9, v0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 55
    move v5, v7

    .line 56
    move v6, v8

    .line 48
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 36
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->centerX:I

    .line 37
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->centerY:I

    .line 38
    div-int/lit8 v0, p2, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-int/lit8 v2, p1, 0x2

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 39
    const-wide/high16 v2, 0x4049

    add-double/2addr v0, v2

    .line 38
    iput-wide v0, p0, Lcom/mikeperrow/spiral/deprecated/SimpleSpiralView;->spiralRadius_:D

    .line 40
    return-void
.end method
