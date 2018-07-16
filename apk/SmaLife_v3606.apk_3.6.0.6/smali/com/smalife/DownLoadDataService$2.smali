.class Lcom/smalife/DownLoadDataService$2;
.super Ljava/lang/Object;
.source "DownLoadDataService.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/DownLoadDataService;->getHeaderIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/accloud/cloudservice/PayloadCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/DownLoadDataService;

.field private final synthetic val$userAccount:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smalife/DownLoadDataService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/DownLoadDataService$2;->this$0:Lcom/smalife/DownLoadDataService;

    iput-object p2, p0, Lcom/smalife/DownLoadDataService$2;->val$userAccount:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/DownLoadDataService$2;)Lcom/smalife/DownLoadDataService;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/smalife/DownLoadDataService$2;->this$0:Lcom/smalife/DownLoadDataService;

    return-object v0
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 154
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smalife/DownLoadDataService$2;->success(Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Lcom/bestmafen/utils/L;->v(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/android/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/smalife/DownLoadDataService$2;->this$0:Lcom/smalife/DownLoadDataService;

    invoke-static {v1}, Lcom/smalife/DownLoadDataService;->access$1(Lcom/smalife/DownLoadDataService;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/smalife/DownLoadDataService$2$1;

    iget-object v3, p0, Lcom/smalife/DownLoadDataService$2;->val$userAccount:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/smalife/DownLoadDataService$2$1;-><init>(Lcom/smalife/DownLoadDataService$2;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    .line 112
    .local v0, "loader":Lcom/android/volley/toolbox/ImageLoader;
    new-instance v1, Lcom/smalife/DownLoadDataService$2$2;

    invoke-direct {v1, p0}, Lcom/smalife/DownLoadDataService$2$2;-><init>(Lcom/smalife/DownLoadDataService$2;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 150
    return-void
.end method
