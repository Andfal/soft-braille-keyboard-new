.class Lh2/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lh2/b$a;


# direct methods
.method constructor <init>(Lh2/b$a;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lh2/b$a$a;->b:Lh2/b$a;

    iput-object p2, p0, Lh2/b$a$a;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lh2/b$a$a;->a:Landroid/app/AlertDialog;

    invoke-static {v0}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
