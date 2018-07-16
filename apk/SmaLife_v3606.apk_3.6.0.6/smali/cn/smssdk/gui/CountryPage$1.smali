.class Lcn/smssdk/gui/CountryPage$1;
.super Ljava/lang/Object;
.source "CountryPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/CountryPage;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/CountryPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/CountryPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage$1;->this$0:Lcn/smssdk/gui/CountryPage;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$1;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage;->access$0(Lcn/smssdk/gui/CountryPage;)V

    .line 61
    return-void
.end method
