.class Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;-><init>(Lcom/mob/tools/gui/BitmapProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private counter:I

.field final synthetic this$0:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->access$200(Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;)Lcom/mob/tools/gui/BitmapProcessor;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor;->access$300(Lcom/mob/tools/gui/BitmapProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;->counter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;->counter:I

    iget v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;->counter:I

    if-gtz v0, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;->counter:I

    iget-object v0, p0, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread$1;->this$0:Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;

    invoke-static {v0}, Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;->access$400(Lcom/mob/tools/gui/BitmapProcessor$ManagerThread;)V

    :cond_0
    return-void
.end method
