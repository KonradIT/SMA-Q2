.class final Lcom/tencent/map/b/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/map/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/map/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/b/g$1;->a:Lcom/tencent/map/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/b/g$1;->a:Lcom/tencent/map/b/g;

    invoke-static {v0}, Lcom/tencent/map/b/g;->a(Lcom/tencent/map/b/g;)V

    return-void
.end method
