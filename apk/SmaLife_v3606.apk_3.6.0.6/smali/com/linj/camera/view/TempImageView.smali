.class public Lcom/linj/camera/view/TempImageView;
.super Landroid/widget/ImageView;
.source "TempImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field public static final NO_ID:I = -0x1

.field public static final TAG:Ljava/lang/String; = "TempImageView"


# instance fields
.field private mAnimationID:I

.field private mIsVideo:Z

.field private mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/linj/camera/view/TempImageView;->mAnimationID:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v2, p0, Lcom/linj/camera/view/TempImageView;->mAnimationID:I

    .line 51
    sget-object v1, Lcom/linj/cameralibrary/R$styleable;->TempImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/linj/cameralibrary/R$styleable;->TempImageView_animat_id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/linj/camera/view/TempImageView;->mAnimationID:I

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method


# virtual methods
.method public isVideo(Z)V
    .locals 0
    .param p1, "isVideo"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/linj/camera/view/TempImageView;->mIsVideo:Z

    .line 117
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 65
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/linj/camera/view/TempImageView;->setVisibility(I)V

    .line 66
    invoke-virtual {p0}, Lcom/linj/camera/view/TempImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 67
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 68
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 69
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/linj/camera/view/TempImageView;->mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/linj/camera/view/TempImageView;->mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    iget-boolean v3, p0, Lcom/linj/camera/view/TempImageView;->mIsVideo:Z

    invoke-interface {v2, v0, v3}, Lcom/linj/camera/view/CameraContainer$TakePictureListener;->onAnimtionEnd(Landroid/graphics/Bitmap;Z)V

    .line 72
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 78
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/linj/camera/view/TempImageView;->setVisibility(I)V

    .line 60
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    return-void
.end method

.method public setListener(Lcom/linj/camera/view/CameraContainer$TakePictureListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/linj/camera/view/TempImageView;->mListener:Lcom/linj/camera/view/CameraContainer$TakePictureListener;

    .line 126
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/linj/camera/view/TempImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 89
    return-void
.end method

.method public startAnimation(I)V
    .locals 0
    .param p1, "resourceID"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/linj/camera/view/TempImageView;->mAnimationID:I

    .line 100
    invoke-virtual {p0}, Lcom/linj/camera/view/TempImageView;->startAnimation()V

    .line 101
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 104
    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 106
    invoke-super {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/linj/camera/view/TempImageView;->mAnimationID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/linj/camera/view/TempImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/linj/camera/view/TempImageView;->mAnimationID:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    invoke-super {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
