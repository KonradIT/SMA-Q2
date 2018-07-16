.class Lcn/smssdk/gui/IdentifyNumPage$2;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Lcn/smssdk/SMSSDK$VerifyCodeReadListener;


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
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$2;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/IdentifyNumPage$2;)Lcn/smssdk/gui/IdentifyNumPage;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$2;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    return-object v0
.end method


# virtual methods
.method public onReadVerifyCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "verifyCode"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcn/smssdk/gui/IdentifyNumPage$2;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    new-instance v1, Lcn/smssdk/gui/IdentifyNumPage$2$1;

    invoke-direct {v1, p0, p1}, Lcn/smssdk/gui/IdentifyNumPage$2$1;-><init>(Lcn/smssdk/gui/IdentifyNumPage$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/IdentifyNumPage;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method
