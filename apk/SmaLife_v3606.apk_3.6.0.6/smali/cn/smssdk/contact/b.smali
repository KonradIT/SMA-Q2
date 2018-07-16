.class Lcn/smssdk/contact/b;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcn/smssdk/contact/a;


# direct methods
.method constructor <init>(Lcn/smssdk/contact/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcn/smssdk/contact/b;->a:Lcn/smssdk/contact/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcn/smssdk/contact/b;->a:Lcn/smssdk/contact/a;

    invoke-static {v0}, Lcn/smssdk/contact/a;->a(Lcn/smssdk/contact/a;)Lcn/smssdk/contact/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/smssdk/contact/d;->a()V

    iget-object v0, p0, Lcn/smssdk/contact/b;->a:Lcn/smssdk/contact/a;

    invoke-static {v0}, Lcn/smssdk/contact/a;->b(Lcn/smssdk/contact/a;)Lcn/smssdk/contact/OnContactChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/contact/b;->a:Lcn/smssdk/contact/a;

    invoke-static {v0}, Lcn/smssdk/contact/a;->b(Lcn/smssdk/contact/a;)Lcn/smssdk/contact/OnContactChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/smssdk/contact/OnContactChangeListener;->onContactChange(Z)V

    :cond_0
    return-void
.end method
