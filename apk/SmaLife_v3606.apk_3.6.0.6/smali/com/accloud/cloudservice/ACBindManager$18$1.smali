.class Lcom/accloud/cloudservice/ACBindManager$18$1;
.super Ljava/lang/Object;
.source "ACBindManager.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accloud/cloudservice/ACBindManager$18;->finish(Lcom/accloud/service/ACMsg;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/accloud/service/ACDeviceFind;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/accloud/cloudservice/ACBindManager$18;


# direct methods
.method constructor <init>(Lcom/accloud/cloudservice/ACBindManager$18;)V
    .locals 0

    .prologue
    .line 948
    iput-object p1, p0, Lcom/accloud/cloudservice/ACBindManager$18$1;->this$1:Lcom/accloud/cloudservice/ACBindManager$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 0
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 955
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 948
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/accloud/cloudservice/ACBindManager$18$1;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/accloud/service/ACDeviceFind;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p1, "deviceFinds":Ljava/util/List;, "Ljava/util/List<Lcom/accloud/service/ACDeviceFind;>;"
    return-void
.end method