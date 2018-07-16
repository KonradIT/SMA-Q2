.class Lcom/tencent/connect/avatar/ImageActivity$2$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/avatar/ImageActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/avatar/ImageActivity$2;


# direct methods
.method constructor <init>(Lcom/tencent/connect/avatar/ImageActivity$2;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2$1;->a:Lcom/tencent/connect/avatar/ImageActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/tencent/connect/avatar/ImageActivity$2$1;->a:Lcom/tencent/connect/avatar/ImageActivity$2;

    iget-object v0, v0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->g(Lcom/tencent/connect/avatar/ImageActivity;)V

    .line 461
    return-void
.end method
