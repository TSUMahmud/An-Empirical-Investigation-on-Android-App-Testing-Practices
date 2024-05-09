.class Landroidx/appcompat/graphics/drawable/StateListDrawable;
.super Landroidx/appcompat/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# instance fields
.field private mMutated:Z

.field private mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    .line 87
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;)V
    .locals 0
    .param p1, "state"    # Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    .line 412
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    .line 413
    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 416
    :cond_0
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 401
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;-><init>()V

    .line 403
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .line 404
    .local v0, "newState":Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 405
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 406
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 389
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 390
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    .line 391
    return-void
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawable;->cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    move-result-object v0

    return-object v0
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;
    .locals 3

    .line 317
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method extractStateSet(Landroid/util/AttributeSet;)[I
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "j":I
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    .line 234
    .local v1, "numAttrs":I
    new-array v2, v1, [I

    .line 235
    .local v2, "states":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 236
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 237
    .local v4, "stateResId":I
    if-eqz v4, :cond_2

    const v5, 0x10100d0

    if-eq v4, v5, :cond_1

    const v5, 0x1010199

    if-eq v4, v5, :cond_1

    .line 246
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "j":I
    .local v5, "j":I
    const/4 v6, 0x0

    invoke-interface {p1, v3, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    neg-int v6, v4

    :goto_1
    aput v6, v2, v0

    move v0, v5

    goto :goto_2

    .line 244
    .end local v5    # "j":I
    .restart local v0    # "j":I
    :cond_1
    goto :goto_2

    .line 239
    :cond_2
    nop

    .line 235
    .end local v4    # "stateResId":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v3    # "i":I
    :cond_3
    invoke-static {v2, v0}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    .line 251
    return-object v2
.end method

.method public isStateful()Z
    .locals 1

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 308
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 309
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->mutate()V

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mMutated:Z

    .line 312
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .line 111
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v0

    .line 112
    .local v0, "changed":Z
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v1, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v1

    .line 117
    .local v1, "idx":I
    if-gez v1, :cond_0

    .line 118
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I

    move-result v1

    .line 120
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method protected setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 395
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 396
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    if-eqz v0, :cond_0

    .line 397
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawable;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawable$StateListState;

    .line 399
    :cond_0
    return-void
.end method
