.class public Lio/github/hidroh/materialistic/widget/IconButton;
.super Landroidx/appcompat/widget/AppCompatImageButton;
.source "IconButton.java"


# static fields
.field private static final STATES:[[I


# instance fields
.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private final mTinted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x101009e

    aput v4, v2, v3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    const v4, -0x101009e

    aput v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lio/github/hidroh/materialistic/widget/IconButton;->STATES:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/github/hidroh/materialistic/widget/IconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/github/hidroh/materialistic/widget/IconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const v0, 0x7f040191

    invoke-static {p1, v0}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setBackgroundResource(I)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/R$styleable;->IconButton:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "ta":Landroid/content/res/TypedArray;
    nop

    .line 52
    const v1, 0x1010038

    invoke-static {p1, v1}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v1

    .line 51
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 53
    .local v1, "colorDisabled":I
    nop

    .line 54
    const v3, 0x1010036

    invoke-static {p1, v3}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v3

    .line 53
    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 55
    .local v3, "colorDefault":I
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 56
    .local v4, "colorEnabled":I
    new-instance v5, Landroid/content/res/ColorStateList;

    sget-object v6, Lio/github/hidroh/materialistic/widget/IconButton;->STATES:[[I

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v4, v7, v2

    const/4 v8, 0x1

    aput v1, v7, v8

    invoke-direct {v5, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v5, p0, Lio/github/hidroh/materialistic/widget/IconButton;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 57
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    iput-boolean v2, p0, Lio/github/hidroh/materialistic/widget/IconButton;->mTinted:Z

    .line 58
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getSuggestedMinimumWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07009b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    .line 61
    :cond_0
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/github/hidroh/materialistic/widget/IconButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method private tint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 77
    if-nez p1, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    iget-boolean v0, p0, Lio/github/hidroh/materialistic/widget/IconButton;->mTinted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, "tintDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lio/github/hidroh/materialistic/widget/IconButton;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-direct {p0, p1}, Lio/github/hidroh/materialistic/widget/IconButton;->tint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 68
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/hidroh/materialistic/widget/IconButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method
