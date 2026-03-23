.class Lcom/nirenr/talkman/SetupActivity$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/SetupActivity$b;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/SetupActivity$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/SetupActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$b;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$b;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-static {p1}, Lcom/nirenr/talkman/SetupActivity$b;->a(Lcom/nirenr/talkman/SetupActivity$b;)[I

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/SetupActivity$b$b;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-static {v0}, Lcom/nirenr/talkman/SetupActivity$b;->b(Lcom/nirenr/talkman/SetupActivity$b;)I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/nirenr/talkman/SetupActivity$b;->k(Lcom/nirenr/talkman/SetupActivity$b;IZ)V

    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$b;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-static {p1}, Lcom/nirenr/talkman/SetupActivity$b;->b(Lcom/nirenr/talkman/SetupActivity$b;)I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/nirenr/talkman/SetupActivity$b;->c(Lcom/nirenr/talkman/SetupActivity$b;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$b;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-static {p1}, Lcom/nirenr/talkman/SetupActivity$b;->b(Lcom/nirenr/talkman/SetupActivity$b;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$b;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-static {p1}, Lcom/nirenr/talkman/SetupActivity$b;->d(Lcom/nirenr/talkman/SetupActivity$b;)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$b;->a:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-static {p1}, Lcom/nirenr/talkman/SetupActivity$b;->f(Lcom/nirenr/talkman/SetupActivity$b;)V

    return-void
.end method
