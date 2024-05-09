.class public Lio/github/hidroh/materialistic/MenuTintDelegate;
.super Ljava/lang/Object;
.source "MenuTintDelegate.java"


# instance fields
.field private mTextColorPrimary:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    nop

    .line 39
    const v0, 0x1010036

    invoke-static {p1, v0}, Lio/github/hidroh/materialistic/AppUtils;->getThemedResId(Landroid/content/Context;I)I

    move-result v0

    .line 38
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lio/github/hidroh/materialistic/MenuTintDelegate;->mTextColorPrimary:I

    .line 40
    return-void
.end method

.method public onOptionsMenuCreated(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 48
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 49
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 50
    goto :goto_1

    .line 52
    :cond_0
    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 53
    iget v2, p0, Lio/github/hidroh/materialistic/MenuTintDelegate;->mTextColorPrimary:I

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 47
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setIcon(Landroid/view/MenuItem;I)V
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "icon"    # I

    .line 59
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    iget v1, p0, Lio/github/hidroh/materialistic/MenuTintDelegate;->mTextColorPrimary:I

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 63
    return-void
.end method
