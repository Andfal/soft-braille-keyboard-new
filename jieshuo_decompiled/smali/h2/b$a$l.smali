.class Lh2/b$a$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/b$a;


# direct methods
.method constructor <init>(Lh2/b$a;)V
    .locals 0

    iput-object p1, p0, Lh2/b$a$l;->a:Lh2/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lh2/b$a$l;->a:Lh2/b$a;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lh2/b$a;->b(Lh2/b$a;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
