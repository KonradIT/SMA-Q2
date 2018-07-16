.class Lcn/smssdk/gui/CountryPage$2$1;
.super Lcn/smssdk/EventHandler;
.source "CountryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/CountryPage$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/smssdk/gui/CountryPage$2;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/CountryPage$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    .line 74
    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/CountryPage$2$1;)Lcn/smssdk/gui/CountryPage$2;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    return-object v0
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 77
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage$2;->access$0(Lcn/smssdk/gui/CountryPage$2;)Lcn/smssdk/gui/CountryPage;

    move-result-object v0

    new-instance v1, Lcn/smssdk/gui/CountryPage$2$1$1;

    invoke-direct {v1, p0, p2, p3}, Lcn/smssdk/gui/CountryPage$2$1$1;-><init>(Lcn/smssdk/gui/CountryPage$2$1;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/CountryPage;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 98
    :cond_0
    return-void
.end method
