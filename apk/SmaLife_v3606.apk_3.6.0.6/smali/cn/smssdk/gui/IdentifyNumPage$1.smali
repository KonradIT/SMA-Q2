.class Lcn/smssdk/gui/IdentifyNumPage$1;
.super Lcn/smssdk/EventHandler;
.source "IdentifyNumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/IdentifyNumPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$1;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    .line 120
    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 122
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$1;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0, p2, p3}, Lcn/smssdk/gui/IdentifyNumPage;->access$0(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 127
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$1;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0, p2, p3}, Lcn/smssdk/gui/IdentifyNumPage;->access$1(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$1;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v0, p2, p3}, Lcn/smssdk/gui/IdentifyNumPage;->access$2(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    goto :goto_0
.end method
