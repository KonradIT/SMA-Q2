.class public Lcom/linj/imageloader/DisplayImageOptions;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linj/imageloader/DisplayImageOptions$Builder;
    }
.end annotation


# instance fields
.field public cacheInMemory:Z

.field public cacheOnDisk:Z

.field public displayer:Lcom/linj/imageloader/displayer/BitmapDisplayer;

.field public fromNet:Z

.field public imageResOnFail:I

.field public imageResOnLoading:I


# direct methods
.method private constructor <init>(Lcom/linj/imageloader/DisplayImageOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/linj/imageloader/DisplayImageOptions$Builder;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->access$0(Lcom/linj/imageloader/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linj/imageloader/DisplayImageOptions;->imageResOnLoading:I

    .line 23
    invoke-static {p1}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->access$1(Lcom/linj/imageloader/DisplayImageOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linj/imageloader/DisplayImageOptions;->imageResOnFail:I

    .line 24
    invoke-static {p1}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->access$2(Lcom/linj/imageloader/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/linj/imageloader/DisplayImageOptions;->cacheInMemory:Z

    .line 25
    invoke-static {p1}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->access$3(Lcom/linj/imageloader/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/linj/imageloader/DisplayImageOptions;->cacheOnDisk:Z

    .line 26
    invoke-static {p1}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->access$4(Lcom/linj/imageloader/DisplayImageOptions$Builder;)Lcom/linj/imageloader/displayer/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/linj/imageloader/DisplayImageOptions;->displayer:Lcom/linj/imageloader/displayer/BitmapDisplayer;

    .line 27
    invoke-static {p1}, Lcom/linj/imageloader/DisplayImageOptions$Builder;->access$5(Lcom/linj/imageloader/DisplayImageOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/linj/imageloader/DisplayImageOptions;->fromNet:Z

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/linj/imageloader/DisplayImageOptions$Builder;Lcom/linj/imageloader/DisplayImageOptions;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/linj/imageloader/DisplayImageOptions;-><init>(Lcom/linj/imageloader/DisplayImageOptions$Builder;)V

    return-void
.end method
