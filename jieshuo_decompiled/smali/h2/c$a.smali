.class Lh2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/c;


# direct methods
.method constructor <init>(Lh2/c;)V
    .locals 0

    iput-object p1, p0, Lh2/c$a;->a:Lh2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lh2/c$a;->a:Lh2/c;

    invoke-static {p1}, Lh2/c;->a(Lh2/c;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lh2/c$a;->a:Lh2/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lh2/c;->i(Lh2/c;Ljava/lang/String;)V

    return-void
.end method
