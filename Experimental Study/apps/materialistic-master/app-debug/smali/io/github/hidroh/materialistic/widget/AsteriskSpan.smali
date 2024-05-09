.class public Lio/github/hidroh/materialistic/widget/AsteriskSpan;
.super Landroid/text/style/ReplacementSpan;
.source "AsteriskSpan.java"


# instance fields
.field private final mBackgroundColor:I

.field private final mPadding:F

.field private final mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 36
    nop

    .line 37
    const v0, 0x7f04008a

    invoke-static {p1, v0}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v0

    .line 36
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/AsteriskSpan;->mBackgroundColor:I

    .line 38
    const v0, 0x106000d

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/AsteriskSpan;->mTextColor:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/widget/AsteriskSpan;->mPadding:F

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 49
    move-object v0, p0

    move-object/from16 v8, p9

    iget v9, v0, Lio/github/hidroh/materialistic/widget/AsteriskSpan;->mPadding:F

    .line 50
    .local v9, "radius":F
    add-float v1, p5, v9

    iget v2, v0, Lio/github/hidroh/materialistic/widget/AsteriskSpan;->mPadding:F

    add-float v10, v1, v2

    .line 51
    .local v10, "centerX":F
    move/from16 v11, p6

    int-to-float v1, v11

    add-float/2addr v1, v9

    add-float v12, v1, v2

    .line 52
    .local v12, "centerY":F
    iget v1, v0, Lio/github/hidroh/materialistic/widget/AsteriskSpan;->mBackgroundColor:I

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    move-object/from16 v13, p1

    invoke-virtual {v13, v10, v12, v9, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 54
    iget v1, v0, Lio/github/hidroh/materialistic/widget/AsteriskSpan;->mTextColor:I

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget v1, v0, Lio/github/hidroh/materialistic/widget/AsteriskSpan;->mPadding:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float v5, p5, v1

    move/from16 v14, p7

    int-to-float v6, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 44
    iget v0, p0, Lio/github/hidroh/materialistic/widget/AsteriskSpan;->mPadding:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
