.class Lh2/c$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/c$k;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lh2/c$k;


# direct methods
.method constructor <init>(Lh2/c$k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh2/c$k$a;->b:Lh2/c$k;

    iput-object p2, p0, Lh2/c$k$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh2/c$k$a;->b:Lh2/c$k;

    iget-object v0, v0, Lh2/c$k;->a:Lh2/c;

    iget-object v1, p0, Lh2/c$k$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lh2/c;->i(Lh2/c;Ljava/lang/String;)V

    iget-object v0, p0, Lh2/c$k$a;->b:Lh2/c$k;

    iget-object v0, v0, Lh2/c$k;->a:Lh2/c;

    invoke-virtual {v0}, Lh2/c;->t()V

    return-void
.end method
