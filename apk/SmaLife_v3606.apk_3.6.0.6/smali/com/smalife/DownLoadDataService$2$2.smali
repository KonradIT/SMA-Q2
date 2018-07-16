.class Lcom/smalife/DownLoadDataService$2$2;
.super Ljava/lang/Object;
.source "DownLoadDataService.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


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


# direct methods
.method constructor <init>(Lcom/smalife/DownLoadDataService$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/DownLoadDataService$2$2;->this$1:Lcom/smalife/DownLoadDataService$2;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "arg0"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 117
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 0
    .param p1, "arg0"    # Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "arg1"    # Z

    .prologue
    .line 122
    return-void
.end method
