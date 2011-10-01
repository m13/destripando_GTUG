.class public Lcom/mikeperrow/spiral/SpiralActivity;
.super Landroid/app/Activity;
.source "SpiralActivity.java"


# static fields
.field private static final SPIRAL_COILS:I = 0xa

.field private static final SPIRAL_SEGMENTS:I = 0x258


# instance fields
.field private spiralView_:Lcom/mikeperrow/spiral/SpiralOpenGLView;

.field private spiral_:Lcom/mikeperrow/spiral/Spiral;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private saveOurNewFavoriteColors([F[F)V
    .locals 7
    .parameter "spiralColor"
    .parameter "bgColor"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0, v4}, Lcom/mikeperrow/spiral/SpiralActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 91
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "spiral_color_r"

    aget v3, p1, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v2, "spiral_color_g"

    aget v3, p1, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v2, "spiral_color_b"

    aget v3, p1, v6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v2, "bg_color_r"

    aget v3, p2, v4

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v2, "bg_color_g"

    aget v3, p2, v5

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v2, "bg_color_b"

    aget v3, p2, v6

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, -0x1

    const/high16 v12, -0x4080

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const-string v4, "SpiralActivity"

    const-string v5, "Started"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0, v11}, Lcom/mikeperrow/spiral/SpiralActivity;->requestWindowFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/mikeperrow/spiral/SpiralActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    .line 28
    const/16 v6, 0x400

    .line 27
    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFlags(II)V

    .line 30
    new-instance v4, Lcom/mikeperrow/spiral/Spiral;

    const/16 v5, 0xa

    const/16 v6, 0x258

    const-wide v7, 0x4077200000000000L

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mikeperrow/spiral/Spiral;-><init>(IID)V

    iput-object v4, p0, Lcom/mikeperrow/spiral/SpiralActivity;->spiral_:Lcom/mikeperrow/spiral/Spiral;

    .line 31
    new-instance v4, Lcom/mikeperrow/spiral/SpiralOpenGLView;

    iget-object v5, p0, Lcom/mikeperrow/spiral/SpiralActivity;->spiral_:Lcom/mikeperrow/spiral/Spiral;

    const/high16 v6, 0x3f00

    invoke-direct {v4, p0, v5, v6}, Lcom/mikeperrow/spiral/SpiralOpenGLView;-><init>(Landroid/content/Context;Lcom/mikeperrow/spiral/Spiral;F)V

    iput-object v4, p0, Lcom/mikeperrow/spiral/SpiralActivity;->spiralView_:Lcom/mikeperrow/spiral/SpiralOpenGLView;

    .line 32
    iget-object v4, p0, Lcom/mikeperrow/spiral/SpiralActivity;->spiralView_:Lcom/mikeperrow/spiral/SpiralOpenGLView;

    .line 33
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 32
    invoke-virtual {v4, v5}, Lcom/mikeperrow/spiral/SpiralOpenGLView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {p0, v10}, Lcom/mikeperrow/spiral/SpiralActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v4, "spiral_color_r"

    invoke-interface {v1, v4, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 38
    .local v3, sr:F
    cmpl-float v4, v3, v12

    if-eqz v4, :cond_0

    .line 40
    const/4 v4, 0x3

    new-array v2, v4, [F

    const-string v4, "spiral_color_r"

    invoke-interface {v1, v4, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    aput v4, v2, v10

    .line 41
    const-string v4, "spiral_color_g"

    invoke-interface {v1, v4, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    aput v4, v2, v11

    const/4 v4, 0x2

    .line 42
    const-string v5, "spiral_color_b"

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    aput v5, v2, v4

    .line 43
    .local v2, spiralColor:[F
    const/4 v4, 0x3

    new-array v0, v4, [F

    const-string v4, "bg_color_r"

    invoke-interface {v1, v4, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    aput v4, v0, v10

    .line 44
    const-string v4, "bg_color_g"

    invoke-interface {v1, v4, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    aput v4, v0, v11

    const/4 v4, 0x2

    .line 45
    const-string v5, "bg_color_b"

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    aput v5, v0, v4

    .line 46
    .local v0, bgColor:[F
    iget-object v4, p0, Lcom/mikeperrow/spiral/SpiralActivity;->spiral_:Lcom/mikeperrow/spiral/Spiral;

    invoke-virtual {v4, v2, v0}, Lcom/mikeperrow/spiral/Spiral;->setColor([F[F)V

    .line 49
    .end local v2           #spiralColor:[F
    .end local v0           #bgColor:[F
    :cond_0
    iget-object v4, p0, Lcom/mikeperrow/spiral/SpiralActivity;->spiralView_:Lcom/mikeperrow/spiral/SpiralOpenGLView;

    invoke-virtual {p0, v4}, Lcom/mikeperrow/spiral/SpiralActivity;->setContentView(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 55
    const-string v0, "Randomize Color"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 56
    const-string v0, "Reset Color"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 57
    const/4 v0, 0x2

    const-string v1, "About"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 58
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 63
    const-string v2, "SpiralActivity"

    const-string v3, "Gets here"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-nez v2, :cond_0

    .line 67
    new-array v1, v4, [F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v6

    .line 68
    .local v1, spiralColor:[F
    new-array v0, v4, [F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v6

    .line 69
    .local v0, bgColor:[F
    iget-object v2, p0, Lcom/mikeperrow/spiral/SpiralActivity;->spiral_:Lcom/mikeperrow/spiral/Spiral;

    invoke-virtual {v2, v1, v0}, Lcom/mikeperrow/spiral/Spiral;->setColor([F[F)V

    .line 70
    invoke-direct {p0, v1, v0}, Lcom/mikeperrow/spiral/SpiralActivity;->saveOurNewFavoriteColors([F[F)V

    .line 72
    .end local v1           #spiralColor:[F
    .end local v0           #bgColor:[F
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v5, v2, :cond_1

    .line 74
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    .line 75
    .restart local v1       #spiralColor:[F
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    .line 76
    .restart local v0       #bgColor:[F
    iget-object v2, p0, Lcom/mikeperrow/spiral/SpiralActivity;->spiral_:Lcom/mikeperrow/spiral/Spiral;

    invoke-virtual {v2, v1, v0}, Lcom/mikeperrow/spiral/Spiral;->setColor([F[F)V

    .line 77
    invoke-direct {p0, v1, v0}, Lcom/mikeperrow/spiral/SpiralActivity;->saveOurNewFavoriteColors([F[F)V

    .line 79
    .end local v1           #spiralColor:[F
    .end local v0           #bgColor:[F
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v6, v2, :cond_2

    .line 80
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    const-string v3, "Drag your finger up and down on the screen to change the speed.\nDO NOT USE WHILE DRIVING OR OPERATING HEAVY MACHINERY."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 82
    const-string v3, "Magic Hypnotic Spiral"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 83
    const-string v3, "Wow!"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 86
    :cond_2
    return v5

    .line 74
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 75
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
