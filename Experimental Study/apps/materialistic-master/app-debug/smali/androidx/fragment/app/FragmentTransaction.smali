.class public abstract Landroidx/fragment/app/FragmentTransaction;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method


# virtual methods
.method public abstract add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract commitNow()V
.end method

.method public abstract commitNowAllowingStateLoss()V
.end method

.method public abstract remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;
.end method
