.class public Lcom/linj/imageloader/DisplayImageOptions$Builder;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/imageloader/DisplayImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cacheInMemory:Z

.field private cacheOnDisk:Z

.field private displayer:Lcom/linj/imageloader/displayer/BitmapDisplayer;

.field private fromNet:Z

.field private imageResOnFail:I

.field private imageResOnLoading:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/linj/imageloader/DisplayImageOptions$Builder;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->imageResOnLoading:I

    return v0
.end method

.method static synthetic access$1(Lcom/linj/imageloader/DisplayImageOptions$Builder;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->imageResOnFail:I

    return v0
.end method

.method static synthetic access$2(Lcom/linj/imageloader/DisplayImageOptions$Builder;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->cacheInMemory:Z

    return v0
.end method

.method static synthetic access$3(Lcom/linj/imageloader/DisplayImageOptions$Builder;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->cacheOnDisk:Z

    return v0
.end method

.method static synthetic access$4(Lcom/linj/imageloader/DisplayImageOptions$Builder;)Lcom/linj/imageloader/displayer/BitmapDisplayer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->displayer:Lcom/linj/imageloader/displayer/BitmapDisplayer;

    return-object v0
.end method

.method static synthetic access$5(Lcom/linj/imageloader/DisplayImageOptions$Builder;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->fromNet:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/linj/imageloader/DisplayImageOptions;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/linj/imageloader/DisplayImageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linj/imageloader/DisplayImageOptions;-><init>(Lcom/linj/imageloader/DisplayImageOptions$Builder;Lcom/linj/imageloader/DisplayImageOptions;)V

    return-object v0
.end method

.method public cacheInMemory(Z)Lcom/linj/imageloader/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "cacheInMemory"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->cacheInMemory:Z

    .line 63
    return-object p0
.end method

.method public cacheOnDisk(Z)Lcom/linj/imageloader/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "cacheOnDisk"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->cacheOnDisk:Z

    .line 72
    return-object p0
.end method

.method public displayer(Lcom/linj/imageloader/displayer/BitmapDisplayer;)Lcom/linj/imageloader/DisplayImageOptions$Builder;
    .locals 2
    .param p1, "displayer"    # Lcom/linj/imageloader/displayer/BitmapDisplayer;

    .prologue
    .line 80
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->displayer:Lcom/linj/imageloader/displayer/BitmapDisplayer;

    .line 82
    return-object p0
.end method

.method public setFromNet(Z)Lcom/linj/imageloader/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "fromNet"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->fromNet:Z

    .line 91
    return-object p0
.end method

.method public showImageOnFail(I)Lcom/linj/imageloader/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "imageRes"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->imageResOnFail:I

    .line 54
    return-object p0
.end method

.method public showImageOnLoading(I)Lcom/linj/imageloader/DisplayImageOptions$Builder;
    .locals 0
    .param p1, "imageRes"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/linj/imageloader/DisplayImageOptions$Builder;->imageResOnLoading:I

    .line 45
    return-object p0
.end method
