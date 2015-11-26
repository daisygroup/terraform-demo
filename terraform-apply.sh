echo "If the plan exists, then apply it"
echo "Checking..."
if [ -a terraform.plan ]
  then
    echo "terraform.plan exists."
    ./terraform apply terraform.plan
fi
echo
echo "...done."
