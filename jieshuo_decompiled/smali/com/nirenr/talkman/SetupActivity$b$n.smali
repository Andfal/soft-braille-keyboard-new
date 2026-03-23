.class Lcom/nirenr/talkman/SetupActivity$b$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/SetupActivity$b;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/SetupActivity$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/SetupActivity$b;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$n;->b:Lcom/nirenr/talkman/SetupActivity$b;

    iput-object p2, p0, Lcom/nirenr/talkman/SetupActivity$b$n;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$n;->a:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/SetupActivity$b$n;->b:Lcom/nirenr/talkman/SetupActivity$b;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/SetupActivity$b$n;->a:[Ljava/lang/String;

    array-length v0, p2

    invoke-static {p1, p2, v0}, Lcom/androlua/a0;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
