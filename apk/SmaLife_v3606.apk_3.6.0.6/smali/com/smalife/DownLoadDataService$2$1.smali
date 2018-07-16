.class Lcom/smalife/DownLoadDataService$2$1;
.super Ljava/lang/Object;
.source "DownLoadDataService.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/DownLoadDataService$2;->success(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/DownLoadDataService$2;

.field private final synthetic val$userAccount:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smalife/DownLoadDataService$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/DownLoadDataService$2$1;->this$1:Lcom/smalife/DownLoadDataService$2;

    iput-object p2, p0, Lcom/smalife/DownLoadDataService$2$1;->val$userAccount:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 101
    invoke-static {p2}, Lcom/smalife/utils/ImageHelper;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/smalife/utils/ImageHelper;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 104
    .local v1, "photo":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/smalife/DownLoadDataService$2$1;->this$1:Lcom/smalife/DownLoadDataService$2;

    invoke-static {v2}, Lcom/smalife/DownLoadDataService$2;->access$1(Lcom/smalife/DownLoadDataService$2;)Lcom/smalife/DownLoadDataService;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/DownLoadDataService$2$1;->val$userAccount:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/smalife/DownLoadDataService;->access$2(Lcom/smalife/DownLoadDataService;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 105
    return-void
.end method
