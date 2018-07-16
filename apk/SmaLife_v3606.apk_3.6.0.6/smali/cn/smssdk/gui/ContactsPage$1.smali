.class Lcn/smssdk/gui/ContactsPage$1;
.super Ljava/lang/Object;
.source "ContactsPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsPage;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/ContactsPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/ContactsPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage$1;->this$0:Lcn/smssdk/gui/ContactsPage;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$1;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$0(Lcn/smssdk/gui/ContactsPage;)V

    .line 59
    return-void
.end method
