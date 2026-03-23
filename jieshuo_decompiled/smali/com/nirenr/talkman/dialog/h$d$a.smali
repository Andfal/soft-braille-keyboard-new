.class Lcom/nirenr/talkman/dialog/h$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/h$d;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/h$d;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/h$d;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/h$d$a;->a:Lcom/nirenr/talkman/dialog/h$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/h$d$a;->a:Lcom/nirenr/talkman/dialog/h$d;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/h$d;->b:Lcom/nirenr/talkman/dialog/h;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/h;->b(Lcom/nirenr/talkman/dialog/h;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h$d$a;->a:Lcom/nirenr/talkman/dialog/h$d;

    iget v0, v0, Lcom/nirenr/talkman/dialog/h$d;->a:I

    aget-object p2, p2, v0

    invoke-static {p1, p2}, Lcom/nirenr/talkman/dialog/h;->h(Lcom/nirenr/talkman/dialog/h;Ljava/lang/String;)V

    return-void
.end method
