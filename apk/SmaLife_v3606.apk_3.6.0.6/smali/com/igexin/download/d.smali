.class Lcom/igexin/download/d;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/igexin/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/igexin/download/DownloadService;)V
    .locals 1

    iput-object p1, p0, Lcom/igexin/download/d;->a:Lcom/igexin/download/DownloadService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/download/d;->a:Lcom/igexin/download/DownloadService;

    invoke-static {v0}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;)V

    return-void
.end method
